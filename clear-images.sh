#!/bin/bash

COUNTER=0
for IMG in $(docker images | grep "<none>[[:space:]]*<none>" | gawk '{ print $3 }'); do
  docker rmi $IMG
  COUNTER=$((COUNTER+1))
done

if [ $COUNTER -ne 0 ]; then
  echo "removed $COUNTER images"
fi

