#!/bin/bash

docker stop shellinabox
docker rm shellinabox

docker pull sspreitzer/shellinabox:latest

. .env
SCRIPT="https://raw.githubusercontent.com/toleksa/configs/main/shellinabox.sh"
SCRIPT="http://192.168.0.2:8765/configs/shellinabox.sh"

docker run -d -p 127.0.0.1:4200:4200 --name shellinabox -e SIAB_USER=${SIAB_USER} -e SIAB_PASSWORD=${SIAB_PASSWORD} -e SIAB_SSL=false -e SIAB_SHELL=/usr/bin/rbash -e SIAB_SCRIPT=$SCRIPT -e SIAB_SUDO=true sspreitzer/shellinabox:latest

