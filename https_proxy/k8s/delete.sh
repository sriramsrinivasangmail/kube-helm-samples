#!/bin/sh
kubectl delete -f ./my-https-deployment.yaml
kubectl delete -f ./my-https-svc.yaml
