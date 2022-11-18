FROM openjdk:17-jdk-alpine
ARG JAR_FILE=target/*.jar
COPY ${JAR_FILE} studentForm3.jar
ENTRYPOINT ["java","-jar","/studentForm3.jar"]