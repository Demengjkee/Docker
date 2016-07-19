FROM sbeliakou/centos:6.7

MAINTAINER Siarhei Beliakou (sbeliakou@gmail.com) 

ENV NGINX_VER="1.10.1"

ADD nginx.repo /etc/yum.repos.d/
RUN yum install -y nginx 

VOLUME /usr/share/nginx/html 

LABEL nginx_version=$NGINX_VER
WORKDIR /usr/share/nginx/html 
COPY index.html .


EXPOSE 80

ENTRYPOINT ["nginx"]
CMD ["-g", "daemon off;"]
