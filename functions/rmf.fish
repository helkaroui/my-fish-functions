function rmf -d "rm -rf with an extra behavior."
    set original_args $argv

    argparse r f -- $argv

    if not set -q _flag_r || set -q _flag_f
        rm $original_args
        return
    end

    function confirm-remove --argument message
        if not confirm $message
            echo 'Cancelling.'
            exit 1
        end
    end

    for f in $argv
        set gitdirs (find $f -name .git)
        for gitdir in $gitdirs
            confirm-remove "Remove .git directory $gitdir?"
            rm -rf $gitdir
        end
    end

    rm $original_args
end
