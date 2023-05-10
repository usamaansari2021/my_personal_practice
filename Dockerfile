FROM ubuntu:latest
FROM ubuntu:latest
RUN apt-get update && apt-get install -y default-jdk
RUN mkdir /opt/tomcat
WORKDIR /opt/tomcat
ADD https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.74/bin/apache-tomcat-9.0.74.tar.gz .
RUN tar -xvzf apache-tomcat-9.0.74.tar.gz 
RUN mv apache-tomcat-9.0.74/* /opt/tomcat
EXPOSE 8080
CMD ["/opt/tomcat/bin/catalina.sh", "run"]
