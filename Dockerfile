FROM tomcat:9.0
ADD /home/batrak/java-tomcat-maven-example/target/*.war /vat/lib/tomcat9/webapps/index.war
EXPOSE 8080
CMD CMD ["catalina.sh", "run"]
