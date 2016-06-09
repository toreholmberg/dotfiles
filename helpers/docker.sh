# unset docker env variables
function docker_unset() {
  unset ${!DOCKER_*}
}

# remove all containers/images (use with caution)
function docker_clean() {
  # delete all containers
  docker rm $(docker ps -a -q)
  # delete all images
  docker rmi $(docker images -q)
}
