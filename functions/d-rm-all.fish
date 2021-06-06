function d-rm-all

  echo Stopping:
  docker stop (docker ps -a -q)
  echo Removing:
  docker rm (docker ps -a -q)

end