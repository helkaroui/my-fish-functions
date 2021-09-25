function kge -d "Alias for kubectl get events"
    kubectl get events --sort-by='.lastTimestamp' $argv
end