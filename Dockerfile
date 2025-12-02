FROM tomcat:9.0-jdk17-temurin

# Remove default webapps
RUN rm -rf /usr/local/tomcat/webapps/*

# Copy your WAR file into ROOT
COPY YarnShadeManager.war /usr/local/tomcat/webapps/ROOT.war

# Expose Tomcat port
EXPOSE 8080

CMD ["catalina.sh", "run"]
