FROM tomcat:latest
COPY ./target/studentForm-2.7.5.war /usr/local/tomcat/webapps
EXPOSE 8080
CMD ["catalina.sh", "run"]