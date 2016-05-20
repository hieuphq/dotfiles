# ref: http://stackoverflow.com/questions/17236796/how-to-remove-old-docker-containers
# remove old containers
# docker ps -a | grep 'weeks ago' | awk '{print $1}' | xargs --no-run-if-empty docker rm

# remove all containers in an elegant way
# docker rm `docker ps --no-trunc -aq`

# remove all untagged images
# docker images | grep "<none>" | awk '{print $3}' | xargs docker rmi

# alias dk="docker"
# alias dk-c="docker-compose"
