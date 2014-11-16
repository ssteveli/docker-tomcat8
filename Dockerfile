FROM tutum/tomcat:8.0

ADD server.xml /tomcat/conf/server.xml

ADD run.sh /run.sh
RUN chmod +x /run.sh

