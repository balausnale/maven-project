FROM tomcat:8 
MAINTAINER prakash
COPY webapp/target/webapp.war /usr/local/tomcat/webapps
EXPOSE 8080
