FROM tomcat:9.0
ADD java-tomcat-maven-example.war /vat/lib/tomcat9/webapps/
EXPOSE 8080
CMD CMD ["catalina.sh", "run"]
