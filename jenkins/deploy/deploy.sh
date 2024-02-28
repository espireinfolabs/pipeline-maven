#!/bin/bash
echo maven-app-image-repo > /tmp/.auth
echo jenkins-pipeline-docker-maven-4 >> /tmp/.auth
echo Devansh@06 >> /tmp/.auth

scp -i /opt/prodkeys /tmp/.auth produser@172.210.73.24:/tmp/.auth
scp -i /opt/prodkeys /home/jenkinsadmin/jenkins-data/pipeline/jenkins/deploy/publish produser@172.210.73.24:/tmp/publish
ssh -i /opt/prodkeys produser@172.210.73.24 "/tmp/publish"
