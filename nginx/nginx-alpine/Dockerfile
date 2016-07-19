FROM alpine:latest

MAINTAINER Siarhei Beliakou (sbeliakou@gmail.com) 

ENV NGINX_VER="1.10.1"

RUN apk add --no-cache nginx \
&& mkdir /run/nginx

VOLUME /var/lib/nginx/html/ 

LABEL nginx_version=$NGINX_VER
WORKDIR /var/lib/nginx/html/ 
COPY index.html .


EXPOSE 80

#ENTRYPOINT bash
ENTRYPOINT ["nginx"]
CMD ["-g", "daemon off;"]
