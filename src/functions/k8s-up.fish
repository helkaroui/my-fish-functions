function k8s-up -d "Start k8s VMs"
    pushd dir1
    cd ~/workspace/datacamp-project/ansible-playbook/infrastructure/vm
    vagrant up
    popd
end