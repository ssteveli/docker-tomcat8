FROM tutum/tomcat:8.0

ADD run.sh /run.sh
RUN chmod +x /run.sh

