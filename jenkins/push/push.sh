#!/bin/bash

echo "***************************"
echo "****** Pushing Image ******"
echo "***************************"

IMAGE="maven-app-image-repo"

echo "****** Loggong in Docker ******"
docker login -u atulvsharma -p $PASS

echo "****** Tagging image ******"
docker tag $IMAGE:$BUILD_TAG atulvsharma/$IMAGE:$BUILD_TAG

echo "****** Pushing image ******"
docker push atulvsharma/$IMAGE:$BUILD_TAG
