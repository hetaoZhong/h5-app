#!/bin/sh
rm -rf /home/mint/antx.properties
kill -9 `ps -ef | grep tomcat | grep -v grep | awk '{print $2}'`
rm -rf /usr/local/soft/apache-tomcat-7.0.67/webapps/h5-app.war
rm -rf /usr/local/soft/apache-tomcat-7.0.67/webapps/h5-app
cp  /home/mint/workspace/h5-app/web/target/h5-app.war /usr/local/soft/apache-tomcat-7.0.67/webapps/
#sh /usr/local/soft/apache-tomcat-7.0.67/bin/startup.sh