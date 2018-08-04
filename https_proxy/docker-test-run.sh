#!/bin/sh

docker_image_name=nginx-proxy-server
docker_image_tag=v1
container_name=test_nginx_proxy_server

docker rm --force ${container_name}

docker run --name ${container_name} -p 17443:443 -v `pwd`:/src -d ${docker_image_name}:${docker_image_tag}


echo "to check on things: docker exec -ti ${container_name} bash"
