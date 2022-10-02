FROM ubuntu:20.04
RUN apt update
RUN apt install default-jdk maven git tomcat9 -y
EXPOSE 8080
RUN git clone https://github.com/daticahealth/java-tomcat-maven-example.git /tmp/project
RUN mvn package -f /tmp/project
RUN mv /tmp/project/target/*.war /var/lib/tomcat9/webapps/index.war
CMD ["catalina.sh", "run"]
