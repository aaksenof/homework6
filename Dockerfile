FROM tomcat:9
RUN apt update
RUN apt install maven -y
ADD boxfuse-sample-java-war-hello /tmp/boxfuse-sample-java-war-hello/
WORKDIR /tmp/boxfuse-sample-java-war-hello/
RUN mvn package
WORKDIR /tmp/boxfuse-sample-java-war-hello/target/
RUN cp hello-1.0.war /usr/local/tomcat/webapps/
CMD ["catalina.sh", "run"]