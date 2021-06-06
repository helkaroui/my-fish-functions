function k8s_status -d "Get k8s VMs status"
    vagrant global-status --prune | grep k8s
end