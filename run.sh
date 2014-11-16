#!/bin/bash

if [ ! -z "${WAR_URL}" ]; then
	echo "removing webapps from ${CATALINA_HOME}/webapps"
	rm -rf ${CATALINA_HOME}/webapps/*
	echo "installing ${WAR_URL}"
	cd ${CATALINA_HOME}/webapps/  && wget -q ${WAR_URL}
fi

if [ ! -f /.tomcat_admin_created ]; then
    /create_tomcat_admin_user.sh
fi

exec ${CATALINA_HOME}/bin/catalina.sh run
