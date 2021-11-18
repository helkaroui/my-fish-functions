function d-rmi-all -d 'Remove all images'

  docker rmi (docker images -q -f)

end