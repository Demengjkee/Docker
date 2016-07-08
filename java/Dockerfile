FROM sbeliakou/centos:6.7


RUN yum install -y wget tar


RUN wget --no-cookies --no-check-certificate --header "Cookie: gpw_e25=http%3A%2F%2Fwww.oracle.com%2F; oraclelicense=accept-securebackup-cookie" "http://download.oracle.com/otn-pub/java/jdk/8u91-b14/jdk-8u91-linux-x64.tar.gz" 
RUN mkdir /opt/oracle/ 
RUN tar xvfz jdk-8u91-linux-x64.tar.gz -C /opt/oracle/ 
RUN ln -s /opt/oracle/jdk1.8.0_91/ /opt/oracle/current 
RUN rm -f /jdk-8u91-linux-x64.tar.gz


