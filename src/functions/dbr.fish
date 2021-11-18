function dbr -d 'docker build and run' --argument tag
    
    docker build -t $tag . && docker run $argv run $tag
  
end