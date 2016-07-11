FROM sbeliakou/centos:6.7


RUN yum install -y wget tar make gcc gcc-c++ curl


RUN cd /opt && wget http://ftp.byfly.by/pub/apache.org/tomcat/tomcat-8/v8.0.36/bin/apache-tomcat-8.0.36.tar.gz \
&& tar xzf apache-tomcat-8.0.36.tar.gz && rm -rf apache-tomcat-8.0.36.tar.gz
COPY server.xml /
RUN cat server.xml > /opt/apache-tomcat-8.0.36/conf/server.xml && rm -f server.xml
RUN echo "JAVA_HOME=/opt/oracle/current/" >  /opt/apache-tomcat-8.0.36/bin/setenv.sh  
RUN chmod +x /opt/apache-tomcat-8.0.36/bin/*.sh


EXPOSE 8009
COPY ./startup.sh /
RUN chmod +x /startup.sh
ENTRYPOINT ["/startup.sh"]

