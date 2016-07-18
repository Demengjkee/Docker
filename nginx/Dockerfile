FROM sbeliakou/centos:6.7

MAINTAINER Siarhei Beliakou (sbeliakou@gmail.com) 

LABEL nginx_version="1.10.1"

WORKDIR /opt/nginx/public


#NGINX install
ADD nginx.repo /etc/yum.repos.d/
RUN yum install -y nginx 


#
VOLUME /opt/nginx/public

ENV NGINX_VER="1.10.1"

EXPOSE 80

ENTRYPOINT ["nginx"]
CMD ["-g", "daemon off;"]
