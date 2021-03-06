#!/bin/bash
################## BUILDING PORTALE ################

gradle -p portale/ war
mkdir /tmp/webapp
mv portale/build/libs/portale.war /tmp/webapp/portale.war

################## BUILD DOCKER DATABASE PORTALE ################

docker build -t studentdb --file=./docker/postgres/Dockerfile .

################## BUILD DOCKER SERVER PORTALE ################

docker build -t studentserver --file=./docker/tomcat/Dockerfile .

################## STARTUP ################

## cleaning any old version
docker rm portale portaledb

## starting containers in detach mode
## N.B. start of portaledb may take longer than expected, check docker logs portaledb.
docker run --name portaledb -d -p 5432:5432 studentdb 
sleep 1
docker run --name portale -d -p 8080:8080 -v /tmp/webapp:/usr/local/tomcat/webapps/ --link portaledb:db studentserver

################## END ################
