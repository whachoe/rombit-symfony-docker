# rombit-symfony-docker
Base containers for our development CI in Rombit.       
Use `./build.sh` to build the containers and upload them to [Dockerhub](hub.docker.com)


## Containers

### fpm
Our php5-fpm container

### nginx
The nginx container



## Some useful docker commands

### List current containers
`docker ps`

### Start a container
`docker start <container name or id>`

### Start shell in a running container
`docker exec -it <container name or id> /bin/bash`

### List current images
`docker images`

### Remove older unused images (to save diskspace on your docker-machine):
`docker images |awk '{print $3}'|grep -v 'IMAGE'| xargs docker rmi {}`
