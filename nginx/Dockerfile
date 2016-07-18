FROM sbeliakou/centos:6.7

MAINTAINER Siarhei Beliakou (sbeliakou@gmail.com) 

LABEL nginx_version="1.10.1"

WORKDIR /opt

#PREreq
RUN yum install -y tar gcc make pcre-devel openssl-devel 

#NGINX install
ADD nginx-1.10.1.tar.gz src/ 
RUN cd src/nginx-1.10.1 \
&& ./configure --prefix=/opt/nginx/1.10.1 --sbin-path=sbin/nginx --conf-path=conf/nginx.conf --error-log-path=logs/error.log --http-log-path=logs/access.log --pid-path=logs/nginx.pid --user=nginx --with-http_ssl_module --with-http_realip_module --without-http_gzip_module \
&& make \
&& make install \
&& rm -rf ../../src \
&& ln -s /opt/nginx/1.10.1 /opt/nginx/current \
&& ln -s /opt/nginx/current/logs /var/log/nginx

#Conf
RUN useradd nginx 

#
RUN mkdir -p /share/nginx
VOLUME /share/nginx

ENV NGINX_VER="1.10.1"

EXPOSE 80

ENTRYPOINT ["/opt/nginx/current/sbin/nginx"]
CMD ["-g", "daemon off;"]
