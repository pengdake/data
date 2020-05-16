#!/usr/bin/env bash

hosts=$@

tower-cli config host __AWX_URL__
tower-cli config username __AWX_ADMIN_USER__
tower-cli config password __AWX_ADMIN_PASSWORD__
tower-cli config verify_ssl false

# create credential
tower-cli credential create --name aistack --credential-type 'Machine' \
    --organization 1 \
    --inputs "{'username': 'root', 'password': '__KUBE_NODES_ROOT_PASSWORD__'}"

# create inventory with host and group
inventory_id=`tower-cli inventory create --name nginx-config-set --organization 1 -f json | jq -r '.id'`

group_id=`tower-cli group create --name k8s-master --inventory ${inventory_id} -f json | jq -r '.id'`

i=1
for host in ${hosts[@]}; do
    host_id=`tower-cli host create --name k8s-node${i} --inventory ${inventory_id} --variables '{"ansible_host": '${host}'}' -f json | jq -r '.id'`
    tower-cli host associate --host ${host_id} --group  ${group_id}
    i=$[$i+1]
done

# create project
project_id=`tower-cli project create --name nginx-config-set --organization 1 --scm-type manual --local-path nginx-conf-set-job-template -f json | jq -r '.id'`

# create job-template
tower-cli  job_template create --project nginx-config-set --credential aistack --playbook update.yml --job-type run --inventory nginx-config-set --survey-enabled True --survey-spec @__AWX_MANIFESTS_DIR__/init/nginx-conf-set/survey.json --name nginx-config-set
