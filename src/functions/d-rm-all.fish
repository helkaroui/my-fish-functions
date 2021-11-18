function d-rm-all -d 'Stop & remove all containers'

  echo Stopping:
  docker stop (docker ps -a -q)
  echo Removing:
  docker rm (docker ps -a -q)

end