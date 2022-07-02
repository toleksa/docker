#!/bin/bash

docker stop nut
docker rm nut

docker run -it -p 9000:9000 --name nut --mount type=bind,source=/storage/storage/warrez/done/000-switch,target=/library nut:latest sh
#docker run -it -p 9000:9000 --name nut --mount type=bind,source=/home/art/nut/library,target=/library nut:latest sh
#docker run -it -p 9000:9000 --name nut nut:latest sh

