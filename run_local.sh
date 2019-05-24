#!/usr/bin/env bash

port="$1"
user="$2"
password="$3"
db="$4"

./image.sh run --rm -p ${port}:3306 \
    -e MYSQL_USER=${user} -e MYSQL_PASSWORD=${password} \
    -e MYSQL_DATABASE=${db} -e MYSQL_ROOT_PASSWORD=${password}
