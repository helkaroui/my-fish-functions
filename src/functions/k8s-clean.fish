function k8s-clean -d "Delete k8s cluster"
    pushd dir1
    cd ~/workspace/datacamp-project/ansible-playbook/infrastructure/vm
    vagrant destroy
    popd
end