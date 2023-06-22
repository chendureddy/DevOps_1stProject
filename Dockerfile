FROM ubuntu:latest
RUN apt-get update && \
    apt-get install -y default-jdk && \
    apt-get install -y wget && \
    apt-get install -y unzip
RUN mkdir /opt/tomcat/
WORKDIR /opt/tomcat
ADD https://dlcdn.apache.org/tomcat/tomcat-10/v10.1.10/bin/apache-tomcat-10.1.10.tar.gz .
RUN tar -xvzf apache-tomcat-10.1.10.tar.gz
RUN mv apache-tomcat-10.1.10/* /opt/tomcat
EXPOSE 8080
CMD ["/opt/tomcat/bin/catalina.sh", "run"]


# FROM ubuntu:latest
# RUN apt-get update && \
    apt-get install -y default-jdk && \
    apt-get install -y wget && \
    apt-get install -y unzip
# RUN mkdir /opt/tomcat/
# WORKDIR /opt/tomcat
# ADD https://dlcdn.apache.org/tomcat/tomcat-10/v10.1.10/bin/apache-tomcat-10.1.10.tar.gz.
# RUN tar -xvzf apache-tomcat-10.1.10.tar.gz
# RUN mv apache-tomcat-10.1.10/* /opt/tomcat
# EXPOSE 8080
# CMD ["/opt/tomcat/bin/catalina.sh", "run"]
