version: '1.0'
services:
 web_server:
  image: 'tomcat:9'
  ports:
  - "8090:8080"
  volumes:
  - "/jenkins-data/maven-data/target:/usr/local/tomcat/webapps"
