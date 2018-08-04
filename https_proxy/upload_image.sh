#!/bin/sh
docker_image_name=nginx-proxy-server
docker_image_tag=v1
docker save ${docker_image_name}:${docker_image_tag} | ssh -C root@one-node docker load
