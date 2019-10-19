#!/bin/sh

docker_image_name=my-https-server
docker_image_tag=v1
container_name=test_https_server

docker rm --force ${container_name}

docker run --name ${container_name} --user 20001 -p 17443:3443 -v `pwd`:/src -d ${docker_image_name}:${docker_image_tag}


printf "to check on things:- \n docker exec -ti ${container_name} sh   \n   curl -kiv https://localhost:17443 \n"
