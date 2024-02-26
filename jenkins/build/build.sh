#!/bin/bash

#Copy the latest jar file to build location

cp -f java-app/target/*.jar jenkins/build/

echo "***********************************"
echo "*******Building Docker Image*******"
echo "***********************************"

cd jenkins/build/ && docker-compose -f docker-compose-build.yml build --no-cache
