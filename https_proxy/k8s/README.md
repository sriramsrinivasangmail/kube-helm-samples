in this example, we will deploy our nginx sample into the kube cluster, without the use of Helm charts, just to understand the art of the possible

remember to push the docker image to a convenient registry and change my-https-deployment.yaml 's image field appropriately

use the convenient .sh scripts to create/delete get status of the deployment

To connect to the service (since we did not use a load balancer or an external IP) - use the CLUSTER-IP assigned to the svc and run something like this from inside the cluster

```
curl -kiv https://<CLUSTER-IP>


curl -kv "https://<CLUSTER-IP>/testpost" -d '{"k2": "v2"}'

and then visit http://ptsv2.com/t/homers-throne to analyze your posts

```
