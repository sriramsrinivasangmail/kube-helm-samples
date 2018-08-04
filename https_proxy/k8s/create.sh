#!/bin/sh
kubectl create -f ./my-https-svc.yaml
kubectl create -f ./my-https-deployment.yaml
