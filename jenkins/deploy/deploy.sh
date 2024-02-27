#!/bin/bash
echo maven-app-image-repo > /tmp/.auth
echo jenkins-pipeline-docker-maven-4 >> /tmp/.auth
echo Devansh@06 >> /tmp/.auth

scp -i /root/jenkins/keysforprodinstance/prodkeys /tmp/.auth produser@172.174.181.188:/tmp/.auth
scp -i /root/jenkins/keysforprodinstance/prodkeys /home/jenkinsadmin/jenkins-data/pipeline/jenkins/deploy/publish produser@172.174.181.188:/tmp/publish
ssh -i /root/jenkins/keysforprodinstance/prodkeys produser@172.174.181.188 "/tmp/publish"
