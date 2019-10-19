#!/bin/sh

echo  "nginxproxyserver-container-${HOSTNAME} is starting" 
nginx -g 'daemon off;'

