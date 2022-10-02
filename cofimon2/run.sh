#!/bin/bash

docker stop cofimon2
docker rm cofimon2

docker run -d -p 8001:8001 --name cofimon2 --mount type=bind,source=/home/art/docker/cofimon2/mon,target=/app/mon cofimon2:latest

