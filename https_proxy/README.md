Simple example used to test self-signed SSL certs and location entries etc in  nginx conf rules.  

We use http://ptsv2.com/t/homers-throne to route requests to so that we know exactly what gets seen on the receiving end..

docker-test-run.sh starts the container in port 7443

Example  https://localhost:7443

Example post test - 

curl -kv "https://localhost:7443/testpost"  -d '{"k1": "v1"}'


and then visit http://ptsv2.com/t/homers-throne  to analyze your posts


since the current directory is volume mounted as /src/  - you should also be able to try this:
curl -kv "https://localhost:7443/src/README.md"


