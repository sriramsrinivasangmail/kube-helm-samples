FROM nginx:alpine
EXPOSE 443 33001 50000

#RUN apt-get update; 
#RUN apt-get install -y vim netcat curl

COPY nginx_data/nginx.conf /etc/nginx/nginx.conf
COPY nginx_data/ssl /etc/nginx/ssl
COPY nginx_data/html /etc/nginx/html

COPY scripts /scripts


# setting the services to bring up on container start
ENTRYPOINT ["/scripts/startup.sh"]

