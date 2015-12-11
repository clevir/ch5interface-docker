
# Copyright (C) 2015 Clevir Solutions
# http://www.ClevirSolutions.com
#

#
# Dockerfile for Clevir-Workspace client component
#

# Start from Tomcat image
FROM tomcat:8.0.26-jre7
MAINTAINER Dennis Oosterkamp <DOosterkamp@Clevir.nl>

# Version info
ENV \
    GUAC_VERSION=0.9.8      \
    CLEVIR_VERSION=0.9.8.7334

#
# Download guacamole.war, placing in specified destination
#

RUN echo "Downloading Clevir client version $CLEVIR_VERSION to /usr/local/tomcat/webapps ..."
RUN curl -L "http://sourceforge.net/projects/clevir/files/ch5interface-${CLEVIR_VERSION}.war" > "/usr/local/tomcat/webapps/hcp.war"

# Start the client under Tomcat, listening on 0.0.0.0:8080
EXPOSE 8080
