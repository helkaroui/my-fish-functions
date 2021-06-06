function k8s_up -d "Start k8s VMs"
    pushd dir1
    cd /home/ubuntu/workspace/datacamp-project/ansible-playbook/infrastructure/vm
    vagrant up
    popd
end