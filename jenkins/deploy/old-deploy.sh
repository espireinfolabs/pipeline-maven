#!/bin/bash
echo maven-app-image-repo > /tmp/.auth
echo $BUILD_TAG >> /tmp/.auth
echo $PASS >> /tmp/.auth

scp -i /opt/prodkeys /tmp/.auth produser@172.171.243.61:/tmp/.auth
scp -i /opt/prodkeys /home/jenkinsadmin/jenkins-data/pipeline/jenkins/deploy/publish produser@172.171.243.61:/tmp/publish
ssh -i /opt/prodkeys produser@172.171.243.61 "/tmp/publish"
