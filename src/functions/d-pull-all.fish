function d-pull-all

  docker images | awk '{print $1}' | xargs -L1 docker pull
  echo 'ALL done.'

end