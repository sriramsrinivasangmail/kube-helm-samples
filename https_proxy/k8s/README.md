in this example, we will deploy our nginx sample into the kube cluster, without the use of Helm charts, just to understand the art of the possible

remember to push the docker image to a convenient registry and change my-https-deployment.yaml 's image field appropriately

Example - to push to an OpenShift in-cluster registry exposed as a route and using skopeo to run root-less and to simplify using self-signed certs:

```

oc login -u ocadmin -p ocadmin https://zen-okd12-lb.fyre.ibm.com:8443

skopeo --insecure-policy copy --dest-tls-verify=false --dest-creds ocadmin:$(oc whoami -t) docker-daemon:my-https-server:v1 docker://docker-registry-default.apps.zen-okd12-lb.fyre.ibm.com/default/my-https-server:v1

## to confirm
skopeo --insecure-policy inspect --tls-verify=false --creds ocadmin:$(oc whoami -t) docker://docker-registry-default.apps.zen-okd12-lb.fyre.ibm.com/default/my-https-server:v1

```


You will also notice that the internal OpenShift registry name is used for the image:

```

image: "docker-registry.default.svc:5000/default/my-https-server:v1"

```

use the convenient .sh scripts to create/delete get status of the deployment

To connect to the service (if you did not use a load balancer or an external IP) - use the CLUSTER-IP assigned to the svc and run something like this from inside the cluster

```
curl -kiv https://<CLUSTER-IP>


curl -kv "https://<CLUSTER-IP>/testpost" -d '{"k2": "v2"}'

and then visit http://ptsv2.com/t/homers-throne to analyze your posts

```

If you are using OpenShift, then you can create a route insted

edit `oc-route.yaml` to define your hostname and then:

```
oc create -f oc-route.yaml
```

and you should be able to access the service via that hostname - say `https://my-https-default.apps.zen-okd12-lb.fyre.ibm.com/`
