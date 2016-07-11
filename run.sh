#!/bin/bash

docker build -t java java/ 
docker create -v /opt/oracle/current --name java java /bin/true
docker build -t httpd httpd/
docker build -t tomcat tomcat/
docker run -d --volumes-from java --name tomcat tomcat
docker run -d -p 80:80 --link tomcat httpd

