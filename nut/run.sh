#!/bin/bash

docker stop nut
docker rm nut

docker run -d -p 9000:9000 --name nut --mount type=bind,source=/storage/warrez/done/000-switch,target=/library nut:latest
#docker run -d -p 9000:9000 --name nut --mount type=bind,source=/home/art/nut/library,target=/library nut:latest
#docker run -d -p 9000:9000 --name nut nut:latest

