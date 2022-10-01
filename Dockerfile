FROM tomcat:9
COPY /root/.jenkins/workspace/active-bond-war/target /usr/local/tomcat/webapps
