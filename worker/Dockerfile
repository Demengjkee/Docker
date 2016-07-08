FROM sbeliakou/centos:6.7


RUN yum install -y wget tar make gcc gcc-c++ curl


RUN cd /opt && wget http://ftp.byfly.by/pub/apache.org/tomcat/tomcat-8/v8.0.36/bin/apache-tomcat-8.0.36.tar.gz \
&& tar xzf apache-tomcat-8.0.36.tar.gz && rm -rf apache-tomcat-8.0.36.tar.gz
COPY server.xml /
RUN cat server.xml > /opt/apache-tomcat-8.0.36/conf/server.xml && rm -f server.xml
RUN echo "JAVA_HOME=/opt/oracle/current/" >  /opt/apache-tomcat-8.0.36/bin/setenv.sh  
RUN chmod +x /opt/apache-tomcat-8.0.36/bin/*.sh


RUN yum install -y httpd httpd-devel

RUN wget http://archive.apache.org/dist/jakarta/tomcat-connectors/jk/source/jk-1.2.15/jakarta-tomcat-connectors-1.2.15-src.tar.gz \
&& tar xvzf jakarta-tomcat-connectors-1.2.15-src.tar.gz \
&& cd jakarta-tomcat-connectors-1.2.15-src/jk/native \
&& ./buildconf.sh \
&& ./configure --with-apxs=/usr/sbin/apxs && make && make install \
&& rm -rf /jakarta-tomcat-connectors-1.2.15-src.tar.gz \
&& rm -rf /jakarta-tomcat-connectors-1.2.15-src

COPY workers.properties /etc/httpd/conf.d/ 

COPY httpd_add.conf /etc/httpd/conf.d/
#RUN cat /httpd_add.conf >> /etc/httpd/conf/httpd.conf \


EXPOSE 80
COPY ./startup.sh /
RUN chmod +x /startup.sh
ENTRYPOINT ["/startup.sh"]

