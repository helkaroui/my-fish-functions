function serve -d "Runs python http.server in directory"
    if which python3
        python3 -m http.server $argv
    else 
        python2 -m SimpleHTTPServer $argv
    end
end