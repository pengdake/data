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

AISTACK_DB_POD=$(kubectl --namespace=aistack-mgmt get pods |grep -oP '^aistack-mysql-\S+')

### set s3cmd auth info
echo "set s3cmd conf"
AISTACK_DB_POD=$(kubectl --namespace=aistack-mgmt get pods |grep -oP '^aistack-mysql-\S+')

export AWS_ENDPOINT=$RGW_ENDPOINT
export AWS_HOST=$RGW_HOST
export AWS_ACCESS_KEY_ID=$RGW_ADMIN_AK
export AWS_SECRET_ACCESS_KEY=$RGW_ADMIN_SK



### import listed apps ###
n=1
for APP in  ${__};do

    # only install selected apps
    if [ $APP != $APP_TO_INS ] && [ ${APP_TO_INS} != all ]; then continue; fi

    # app vars setup
    ID=${APP}_id
    DSL=${APP}_dataset_
    DIR=${APP}_dir
    IMN=${APP}_image_name
    IMV=${APP}_image_version
    IMC=${APP}_image_cpu
    IMG=${APP}_image_gpu
    IMD=${APP}_image_distributed
    IMF_C="${!IMN}_${!IMV}-cpu.tar"
    IMT_C="${!IMN}:${!IMV}-cpu"
    IMF_G="${!IMN}_${!IMV}-gpu.tar"
    IMT_G="${!IMN}:${!IMV}-gpu"
    MN=${APP}_model_name
    MD=${APP}_model_description
    MP=${APP}_model_nodeport
    CN=${APP}_code_name
    CD=${APP}_code_description
    CHL=${APP}_code_hyperparameter_

    APP_FULLPATH="$(pwd)/${!DIR}"
    CURRENT_PATH="$(pwd)"

    echo "Importing: $n $APP..."
    start=$SECONDS
    echo "Create dataset bucket"
    for DS in ${!DSL};do
        DSN=${DS}_name
        DSC=${DS}_cmd
        DSP="dataset"
        if [[ ${!DSN} == *-pre ]]; then
            DSP="pre-dataset"
        fi
        curl -X POST ${AISTACK_URL}/resource-manager/v1/datasets -H 'Content-Type:application/json' -H 'project-name:admin' -H 'X-Access-Token:api-sdk'  -H 'X-Access-Source:SDK' -d "{\"datasetDesc\": \"${!MD}\",\"datasetId\": \"${!DSN}\",\"datasetName\": \"${!DSN}\",\"publicDataset\": 1}"
        bucket_name="dataset-${!DSN}"
        cd ${APP_FULLPATH}/${DSP}/${!DSN}
        mkdir tmp && ${!DSC} tmp
        cd ${CURRENT_PATH}
        s3cmd put ${APP_FULLPATH}/${DSP}/${!DSN}/tmp/* --recursive --no-ssl --host=${AWS_HOST} --host-bucket= s3://${bucket_name}/
    done
    echo "Create code bucket"   
    curl -X POST ${AISTACK_URL}/resource-manager/v1/algorithm -H 'Content-Type:application/json' -H 'project-name:admin' -H 'X-Access-Token:api-sdk'  -H 'X-Access-Source:SDK' -d "{\"algDesc\": \"${!CD}\",\"algId\": \"${!ID}\",\"algName\": \"${!CN}\",\"publicAlg\": 1}"
    bucket_name="code-${!ID}"
    echo "${APP_FULLPATH}/code/${!CN}"
    s3cmd put ${APP_FULLPATH}/code/* --recursive  --no-ssl --host=${AWS_HOST} --host-bucket= s3://${bucket_name}/
    echo "Create model bucket"   
    curl -X POST ${AISTACK_URL}/resource-manager/v1/model -H 'Content-Type:application/json' -H 'project-name:admin' -H 'X-Access-Token:api-sdk'  -H 'X-Access-Source:SDK' -d "{\"modelDesc\": \"${!MD}\",\"modelId\": \"${!ID}\",\"modelName\": \"${!MN}\",\"modelSource\": 0,\"modelVersion\":\"1.0\"}"
    bucket_name="model-${!ID}"
    s3cmd put ${APP_FULLPATH}/model/* --recursive  --no-ssl --host=${AWS_HOST} --host-bucket= s3://${bucket_name}/

    # Updating database script for super_param
    for CH in ${!CHL};do
    cat >> /tmp/aistack.sql << EOF
REPLACE INTO \`tb_super_param\` ( \`key\`, \`value\`, \`create_time\`, \`alg_id\`) VALUES ('${CH#"$CHL"}', '${!CH}', now(), '${!ID}');
EOF
    done

    echo "Uploading image..."
    if [ ${!IMC} == "yes" ]
    then
        docker load -i ${!DIR}/image/${IMF_C}
        docker tag ${IMT_C} $HARBOR_URL/library/${IMT_C}
        docker push $HARBOR_URL/library/${IMT_C}
        docker rmi $HARBOR_URL/library/${IMT_C} ${IMT_C}
    fi
    if [ ${!IMG} == "yes" ]
    then
        docker load -i ${!DIR}/image/${IMF_G}
        docker tag ${IMT_G} $HARBOR_URL/library/${IMT_G}
        docker push $HARBOR_URL/library/${IMT_G}
        docker rmi $HARBOR_URL/library/${IMT_G} ${IMT_G}
    fi

    # Updating database script for image
    touch /tmp/aistack.sql
    if [ ${!IMC} == "yes" ]
    then
        cat >> /tmp/aistack.sql << EOF
    REPLACE INTO \`tb_image\` (\`uuid\`, \`name\`,  \`version\`, \`address\`, \`isSupportCluster\`, \`description\`, \`type\`, \`public_image\`,  \`compute_unit\`, \`create_time\`, \`start_cmd\`, \`image_usable\`)  VALUES ('${!IMN}:${!IMV}:cpu', '${!IMN}', '${!IMV}', '$HARBOR_URL/library/${IMT_C}', '${!IMD}', '', 0, 1, 'cpu', now(), '/root/scripts/start.sh', 1);
EOF
    fi
    if [ ${!IMC} == "fromgpu" ]
    then
        cat >> /tmp/aistack.sql << EOF
    REPLACE INTO \`tb_image\` (\`uuid\`, \`name\`,  \`version\`, \`address\`, \`isSupportCluster\`, \`description\`, \`type\`, \`public_image\`,  \`compute_unit\`, \`create_time\`, \`start_cmd\`, \`image_usable\`)  VALUES ('${!IMN}:${!IMV}:cpu', '${!IMN}', '${!IMV}', '$HARBOR_URL/library/${IMT_G}', '${!IMD}', '', 0, 1, 'cpu', now(), '/root/scripts/start.sh', 1);
EOF
    fi
    if [ ${!IMG} == "yes" ]
    then
        cat >> /tmp/aistack.sql << EOF
    REPLACE INTO \`tb_image\` (\`uuid\`, \`name\`,  \`version\`, \`address\`, \`isSupportCluster\`, \`description\`, \`type\`, \`public_image\`,  \`compute_unit\`, \`create_time\`, \`start_cmd\`, \`image_usable\`)  VALUES ('${!IMN}:${!IMV}:gpu', '${!IMN}-gpu', '${!IMV}', '$HARBOR_URL/library/${IMT_G}', '${!IMD}', '', 0, 1, 'gpu', now(), '/root/scripts/start.sh', 1);
EOF
    fi

    echo "Updating database for image..."
    kubectl -n aistack-mgmt cp /tmp/aistack.sql ${AISTACK_DB_POD}:/tmp/
    kubectl -n aistack-mgmt exec ${AISTACK_DB_POD} -- bash -c "mysql --default-character-set=utf8 --user=root --password=$AISTACK_DB_PASSWORD aistack < /tmp/aistack.sql"
    kubectl -n aistack-mgmt exec ${AISTACK_DB_POD} -- bash -c "rm -f /tmp/aistack.sql" && rm -f /tmp/aistack.sql

    duration=$(( SECONDS - start ))
    echo "$APP: import finished after ${duration}s"
    n=$[n + 1]
done

