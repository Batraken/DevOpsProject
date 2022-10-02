FROM maven
ADD /home/batrak/java-tomcat-maven-example/ /tmp/
RUN mvn package -f /tmp/java-tomcat-maven-example/
RUN mv /tmp/java-tomcat-maven-example/target/*.war /share/index.war
CMD ["mvn"]