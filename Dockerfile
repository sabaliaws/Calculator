FROM tomcat:latest
LABEL maintainer="devopsteam"
ADD ./target/Calculator-1.0-SNAPSHOT.jar /usr/local/tomcat/webapps/
EXPOSE 8090
CMD ["catalina.sh", "run"]
