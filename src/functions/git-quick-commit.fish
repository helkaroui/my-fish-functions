function git-quick-commit --argument message
    set -q message[1]
    or set message "quick commit"

    echo "Commit message: $message"

    git add --all && git commit -m "$message" && git push
end