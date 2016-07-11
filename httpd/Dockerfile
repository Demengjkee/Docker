FROM sbeliakou/centos:6.7


RUN yum install -y wget tar make gcc gcc-c++ curl


RUN yum install -y httpd httpd-devel cronolog

RUN wget http://archive.apache.org/dist/jakarta/tomcat-connectors/jk/source/jk-1.2.15/jakarta-tomcat-connectors-1.2.15-src.tar.gz \
&& tar xvzf jakarta-tomcat-connectors-1.2.15-src.tar.gz \
&& cd jakarta-tomcat-connectors-1.2.15-src/jk/native \
&& ./buildconf.sh \
&& ./configure --with-apxs=/usr/sbin/apxs && make && make install \
&& rm -rf /jakarta-tomcat-connectors-1.2.15-src.tar.gz \
&& rm -rf /jakarta-tomcat-connectors-1.2.15-src


COPY workers.properties /etc/httpd/conf.d/ 
COPY httpd-vhost.conf /etc/httpd/conf.d/
COPY jk.conf /etc/httpd/conf.d/


EXPOSE 80
COPY ./startup.sh /
RUN chmod +x /startup.sh
ENTRYPOINT ["/startup.sh"]

