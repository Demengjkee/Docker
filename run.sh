#!/bin/bash

docker build -t java java/ 
docker create -v /opt/oracle/current --name java java /bin/true
docker build -t worker worker/
docker run -d -P --volumes-from java worker

