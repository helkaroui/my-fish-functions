function k8s-down -d "Shutdown k8s nodes"
    pushd dir1
    cd ~/workspace/datacamp-project/ansible-playbook/infrastructure/vm
    vagrant halt
    popd
end