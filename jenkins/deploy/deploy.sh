#!/bin/bash
echo maven-app-image-repo > /tmp/.auth
echo $BUILD_TAG >> /tmp/.auth
echo $PASS >> /tmp/.auth

scp -i /opt/prodkeys /tmp/.auth produser@172.174.247.188:/tmp/.auth
scp -i /opt/prodkeys ./jenkins/deploy/publish produser@172.174.247.188:/tmp/publish
ssh -i /opt/prodkeys produser@172.174.247.188 "/tmp/publish"
