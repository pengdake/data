#!/bin/bash

set -e

### environment vars setup ###
source conf/global.sh
source utils/parse_yaml.sh
eval $(parse_yaml conf/app.yml)

APP_TO_INS=$1
if [ -z $APP_TO_INS ] || [ ! -z $2 ]; then
    echo "To install, choose ONE from:"
    echo ${__} OR all
    exit 1
fi

if  ! printf '%s\n' ${__} | grep -q -E "^${APP_TO_INS}$" && [ ${APP_TO_INS} != all ]; then
    echo "$APP_TO_INS is not a valid option, choose ONE from:"
    echo ${__} OR all
    exit 1
fi

AILAB_POD=$(kubectl --namespace=ailab-mgmt get pods |grep -oP '^ailab-tomcat-\S+')
### get ailab auth token
echo "get ailab auth token"
resp=`curl -k ${AILAB_URL}/ailab-manager/v1/kaptcha/json`
key=`echo ${resp} | jq -r '.result.captchaKey'`
code=`echo ${resp} | jq -r '.result.captchaCode'`

resp=`curl -k -XPOST ${AILAB_URL}/ailab-manager/v1/login -H "Content-Type:application/json" --data "{\"loginName\":\"${AILAB_USER}\",\"password\":\"${AILAB_PASSWORD}\",\"captchaCode\":\"${code}\",\"captchaKey\":\"${key}\"}"`
token=`echo ${resp} | jq -r '.result.token'`

### set s3cmd auth info
echo "set s3cmd conf"
AISTACK_DB_POD=$(kubectl --namespace=aistack-mgmt get pods |grep -oP '^aistack-mysql-\S+')

export AWS_ENDPOINT=$RGW_ENDPOINT
export AWS_HOST=$RGW_HOST
export AWS_ACCESS_KEY_ID=$RGW_ADMIN_AK
export AWS_SECRET_ACCESS_KEY=$RGW_ADMIN_SK


### upload dataset, images and other resource
echo "upload dataset and img"
for APP in ${__};do 
    if [ $APP != $APP_TO_INS ] && [ ${APP_TO_INS} != all ]; then continue; fi

    ID=${APP}_id
    DSL=${APP}_dataset_
    IMN=${APP}_image_name
    IMV=${APP}_image_version
    IMF_C="${!IMN}_${!IMV}.tar"
    IMT_C="${!IMN}:${!IMV}"
    IMG_UUID="$HARBOR_URL/${AILAB_CUSTOM_IMAGES_PROJECT}/${IMT_C}"

    APP_FULLPATH="$(pwd)/lesson/${!ID}"
    echo "Importing: $n $APP..."
    start=$SECONDS

    echo "Uploading dataset..."
    for DS in ${!DSL};do
        DSN=${DS}_name
        DSP="dataset"
        echo "${!DSN}"
        datasetName=${!DSN}
        datasetDesc=${!DSN}
        resp=`curl -k -XPOST ${AILAB_URL}/ailab-manager/v1/datasets -H "Content-Type:application/json" -H "X-Auth-Token:${token}" --data "{\"datasetName\":\"${datasetName}\",\"datasetDesc\":\"${datasetDesc}\",\"accessPermission\":1}"`
        bucket_name=`echo ${resp} | jq -r '.result'`
        s3cmd put ${APP_FULLPATH}/dataset/${!DSN}/* --no-ssl --host=${AWS_HOST} --host-bucket= s3://${bucket_name}/
    done

    echo "Uploading image..."
    docker load -i ${APP_FULLPATH}/image/${IMF_C}
    docker tag ${IMT_C} ${IMG_UUID}
    docker push ${IMG_UUID}
    docker rmi ${IMG_UUID} ${IMT_C}

    echo "Uploading other resource..."
    kubectl cp $APP_FULLPATH/lab ailab-mgmt/$AILAB_POD:/opt/ailab/files
    kubectl cp $APP_FULLPATH/course ailab-mgmt/$AILAB_POD:/opt/ailab/files
    kubectl cp $APP_FULLPATH/pdf ailab-mgmt/$AILAB_POD:/opt/ailab/files
    kubectl cp $APP_FULLPATH/picture ailab-mgmt/$AILAB_POD:/opt/ailab/files

    echo "Init lesson info by sql..."
    cp $(pwd)/sql/${!ID}-ailab.sql /tmp/${!ID}-ailab.sql
    sed -i -r \
        -e "s|__IMG_UUID__|${IMG_UUID}|" \
        "/tmp/${!ID}-ailab.sql"

    cat >> /tmp/image.sql << EOF
REPLACE INTO \`tb_image\` (\`uuid\`, \`name\`,  \`version\`, \`address\`, \`isSupportCluster\`, \`description\`, \`type\`, \`public_image\`,  \`compute_unit\`, \`create_time\`, \`start_cmd\`, \`image_usable\`)  VALUES ('${!IMN}:${!IMV}', '${!IMN}', '${!IMV}', '$HARBOR_URL/${AILAB_CUSTOM_IMAGES_PROJECT}/${IMT_C}', 0, '', 1, 1, 'cpu', now(), '', 1);
EOF
    kubectl -n aistack-mgmt cp /tmp/image.sql ${AISTACK_DB_POD}:/tmp/
    kubectl -n aistack-mgmt cp /tmp/${!ID}-ailab.sql ${AISTACK_DB_POD}:/tmp/
    kubectl -n aistack-mgmt exec ${AISTACK_DB_POD} -- bash -c "mysql --default-character-set=utf8 --user=root --password=$MYSQL_ROOT_PASSWORD ailab < /tmp/${!ID}-ailab.sql"
    kubectl -n aistack-mgmt exec ${AISTACK_DB_POD} -- bash -c "mysql --default-character-set=utf8 --user=root --password=$MYSQL_ROOT_PASSWORD aistack < /tmp/image.sql"
    kubectl -n aistack-mgmt exec ${AISTACK_DB_POD} -- bash -c "rm -f /tmp/*.sql" && rm -f /tmp/aistack.sql && rm -f /tmp/image.sql

    duration=$(( SECONDS - start ))
    echo "$APP: import finished after ${duration}s"
    n=$[n + 1]

done
