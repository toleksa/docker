#!/bin/bash

docker stop plex
docker rm plex

# those ports were in original instruction, but seems to work without them
#-p 3005:3005/tcp \
#-p 8324:8324/tcp \
#-p 32469:32469/tcp \
#-p 1900:1900/udp \
#-p 32410:32410/udp \
#-p 32412:32412/udp \
#-p 32413:32413/udp \
#-p 32414:32414/udp \

docker run \
-d \
--name plex \
-p 32400:32400/tcp \
-e TZ="Europe/Zurich" \
-e PLEX_CLAIM="hCFeKiZ6mKfNDZDLxtC_" \
-e ADVERTISE_IP="http://192.168.22.1:32400/" \
-h plex \
--mount type=bind,source=/data/plex/config/,target=/config \
--mount type=bind,source=/data/plex/transcode/,target=/transcode \
--mount type=bind,source=/storage/storage/mov/,target=/data \
--mount type=bind,source=/storage/warrez/done/000-mov,target=/data2 \
plexinc/pms-docker

