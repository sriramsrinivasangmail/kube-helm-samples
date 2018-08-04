Simple example used to test self-signed SSL certs and location entries etc in  nginx conf rules.  

And deploying kubernetes directly as well as with a chart.

The nginx config and other files are under nginx_data/

1). Build Docker inage & test out
run build.sh to build the docker image

docker-test-run.sh starts the container where the nginx server is accessed via port 17443 on the host

Example  https://localhost:17443

Example post test - 

curl -kv "https://localhost:17443/testpost"  -d '{"k1": "v1"}'

and then visit http://ptsv2.com/t/homers-throne  to analyze your posts

since the current directory is volume mounted as /src/  - you should also be able to try this:
curl -kv "https://localhost:17443/src/README.md"

2). Try out with kubernetes

see k8s/README.md

3). The Helm chart is in my-https-chart

- was created as helm create my-https-chart

- run lint to ensure the chart checks out fine
`helm lint ./my-https-chart`

- use the dry-run option to check out what yaml will get run

```
	helm install --name dry --dry-run --debug ./my-https-chart
```

- create a release & check status
```
helm install --name my-https-release --namespace ns1 my-https-chart

helm status my-https-release
```

- access via a simple port forward

```
kubectl port-forward -n ns1 deployment/my-https-release-my-https-chart 18443:443

visit https://localhost:18443
```

- cleanup

```
helm delete --purge my-https-release
```
