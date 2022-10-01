FROM tomcat:9
ADD /root/.jenkins/workspace/active-bond-war/target/*.war /mnt/webserver/apache-tomcat-9.0.67/webapps
