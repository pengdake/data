#!/usr/bin/env bash
# vim: nu:noai:ts=4

awx_dir="${__BASE_DIR__}/addons/awx/"
awx_manifests_dir="${awx_dir}/manifests"
awx_url="http://${KUBE_MASTER_VIP}:${AWX_WEB_SVC_PORT}"

NS="awx"

if ! kubectl get namespace ${NS} &>/dev/null; then
    kubectl create namespace ${NS}
fi

if [[ -d "${awx_manifests_dir}" ]]; then
    rm -rf "${awx_manifests_dir}"
fi
mkdir -p "${awx_manifests_dir}"

cat <<EOF > $awx_manifests_dir/awx-values.yaml
awx_web:
  image:
    repository: ${AWX_WEB_IMAGE}
    tag: ${AWX_WEB_VERSION}
awx_task:
  image:
    repository: ${AWX_TASK_IMAGE}
    tag: ${AWX_TASK_VERSION}
awx_secret_key: ${AWX_SECRET_KEY}
default_admin_user: ${AWX_ADMIN_USER}
default_admin_password: ${AWX_ADMIN_PASSWORD}
web_svc_port: ${AWX_WEB_SVC_PORT}
memcached:
  memcached:
    replicaCount: ${KUBE_MASTER_IPS_ARRAY_LEN}
    image:
      repository: ${AWX_MEMCACHED_IMAGE}
      tag: ${AWX_MEMCACHED_VERSION}
rabbitmq:
  rabbitmq:
    image:
      repository: ${AWX_RABBITMQ_IMAGE}
      tag: ${AWX_RABBITMQ_VERSION}
postgresql:
  postgresql:
    image:
      repository: ${AWX_POSTGRESQL_IMAGE}
      tag: ${AWX_POSTGRESQL_VERSION}
EOF

helm upgrade --install awx -n ${NS} \
-f $awx_manifests_dir/awx-values.yaml "${awx_dir}/awx"
LOG debug "Waiting for awx to be ready..."
sleep 5
count=5
while [[ ! -z  $(kubectl -n ${NS}  get pod -o 'jsonpath={..status.conditions[?(@.type=="Ready")].status}'| grep False) ]]; do
    if [ $count -gt $WAIT_AT_MOST_SECONDS ]; then
        LOG error "awx failed to be ready in ${WAIT_AT_MOST_SECONDS} seconds!"
        exit 1
    fi
    sleep 10
    count=$(($count+10))
done

awx_web_pod=$(kubectl --namespace=${NS} get pods |grep -oP '^awx-web-\S+')
awx_task_pods=$(kubectl --namespace=${NS} get pods |grep -oP '^awx-task-\S+')
cp -rf "${awx_dir}/init" "${awx_manifests_dir}/"

kubectl cp ${awx_manifests_dir}/init/projects  ${awx_web_pod}:/var/lib/awx/projects -n ${NS}
for awx_task_pod in ${awx_task_pods[@]}; do
    kubectl cp ${awx_manifests_dir}/init/projects  ${awx_task_pod}:/var/lib/awx/projects -n ${NS}
done

sed -i -r \
    -e "s|__AWX_URL__|${awx_url}|" \
    -e "s|__AWX_ADMIN_USER__|${AWX_ADMIN_USER}|" \
    -e "s|__AWX_ADMIN_PASSWORD__|${AWX_ADMIN_PASSWORD}|" \
    -e "s|__KUBE_NODES_ROOT_PASSWORD__|${KUBE_NODES_ROOT_PASSWORD}|" \
    -e "s|__AWX_MANIFESTS_DIR__|${awx_manifests_dir}|" \
    "${awx_manifests_dir}/init/nginx-conf-set/nginx-conf-set-init.sh"

bash ${awx_manifests_dir}/init/nginx-conf-set/nginx-conf-set-init.sh ${KUBE_MASTER_IPS_ARRAY[@]}
