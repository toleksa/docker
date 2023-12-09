#!/usr/bin/env bash
set -x 

PROJECT=$(dirname "$(readlink -f "$0")" | gawk -F"/" '{ print $NF }')

#update source
cd src/nut
git pull
COMMIT="git-$(git rev-parse --short HEAD)"
cd -

podman build -t $PROJECT:$COMMIT .
podman tag $PROJECT:$COMMIT $PROJECT:latest

