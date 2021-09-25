function d-rmi-all

  docker rmi (docker images -q -f)

end