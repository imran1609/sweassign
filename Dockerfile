FROM openjdk:17-jdk-alpine
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} assignment3.jar
ENTRYPOINT ["java","-jar","/assignment3.jar"]