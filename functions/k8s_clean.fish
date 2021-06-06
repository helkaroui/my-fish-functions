function k8s_clean -d "Delete k8s cluster"
    pushd dir1
    cd /home/ubuntu/workspace/datacamp-project/ansible-playbook/infrastructure/vm
    vagrant destroy
    popd
end