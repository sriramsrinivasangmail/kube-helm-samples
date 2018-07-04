#!/bin/sh

nohup nginx > /tmp/nginx.out 2>&1 

echo  "nginxproxyserver-container-${HOSTNAME}-is-up" & tail -f /dev/null & wait
