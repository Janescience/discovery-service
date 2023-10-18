FROM openjdk:17-jdk
ARG JAR_FILE=./*.jar
COPY ${JAR_FILE} /usr/local/webapps/discovery.jar
ENTRYPOINT ["java","-jar","/usr/local/webapps/discovery.jar"]
EXPOSE 9001
