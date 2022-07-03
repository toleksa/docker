#!/bin/bash

podman stop redmine
podman rm redmine

# original image, doesn't work with socket
#podman run -it --name redmine -P -e REDMINE_DB_MYSQL=192.168.0.2 -e REDMINE_DB_USERNAME=redmine -e REDMINE_DB_PASSWORD=$(cat db_password) redmine
#podman run -d --name redmine -p 9002:3000 --mount type=bind,source=/run/mysqld/mysqld.sock,target=/mysql.sock --mount type=bind,source=/storage/data/code/redmine/files,target=/usr/src/redmine/files localhost/redmine
podman run -d --name redmine -p 9002:3000 --mount type=bind,source=/run/mysqld/mysqld.sock,target=/mysql.sock --mount type=bind,source=/storage/data/code/redmine/files,target=/usr/src/redmine/files --mount type=bind,source=/home/art/docker/redmine/database.yml,target=/usr/src/redmine/config/database.yml redmine

