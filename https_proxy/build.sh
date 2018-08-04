#!/bin/sh

scriptdir=`dirname $0`

docker_file_name=${scriptdir}/Dockerfile

docker_image_name=nginx-proxy-server
docker_image_tag=v2

docker build -f ${docker_file_name} -t ${docker_image_name}:${docker_image_tag} .
