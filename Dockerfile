FROM openjdk:17-alpine

WORKDIR /opt/

# Download Apache Tomcat tarball separately
ADD https://dlcdn.apache.org/tomcat/tomcat-9/v9.0.73/bin/apache-tomcat-9.0.73.tar.gz /opt/

# Extract the downloaded tarball
RUN tar xf apache-tomcat-9.0.73.tar.gz && \
    mv apache-tomcat-9.0.73 tomcat9 && \
    rm apache-tomcat-9.0.73.tar.gz

EXPOSE 8080

# Assuming hr-api*.war is available in the context where this Dockerfile is located
COPY target/hr-api*.war /opt/tomcat9/webapps/hr-api.war

CMD ["/opt/tomcat9/bin/catalina.sh", "run"]
