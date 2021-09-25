function _python -d "Run Python3 with a fallback to Python2"
    if which python3
        python3 $argv
    else 
        python $argv
    end
end