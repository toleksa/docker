#!/bin/bash

docker stop jenkins
docker rm jenkins

docker run -d -p 9003:8080 --name jenkins --restart=on-failure --mount type=bind,source=/local/jenkins/,target=/var/jenkins_home jenkins/jenkins:lts-jdk11

