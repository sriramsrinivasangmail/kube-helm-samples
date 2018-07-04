#!/bin/sh

scriptdir=`dirname $0`

docker_file_name=${scriptdir}/Dockerfile

docker_image_name=nginx-proxy-server

docker build -f ${docker_file_name} -t ${docker_image_name} .
