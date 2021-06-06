function k8s_down -d "Shutdown k8s nodes"
    pushd dir1
    cd /home/ubuntu/workspace/datacamp-project/ansible-playbook/infrastructure/vm
    vagrant halt
    popd
end