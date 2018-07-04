#!/bin/sh

image_name=nginx-proxy-server
container_name=test_nginx_proxy_server

docker rm --force ${container_name}

docker run --name ${container_name} -p 7443:443 -v `pwd`:/src -d ${image_name}


echo "to check on things: docker exec -ti ${container_name} bash"
