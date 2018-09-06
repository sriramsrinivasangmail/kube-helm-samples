#!/bin/sh

docker_image_name=mycluster.icp:8500/default/https-server
docker_image_tag=v1
container_name=test_https_server

docker rm --force ${container_name}

docker run --name ${container_name} -p 17443:443 -v `pwd`:/src -d ${docker_image_name}:${docker_image_tag}


echo "to check on things: docker exec -ti ${container_name} bash"
