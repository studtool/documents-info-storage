#!/usr/bin/env bash

sudo ./image.sh run --rm -p 3306:3306 \
    -e MYSQL_USER=user -e MYSQL_PASSWORD=password \
    -e MYSQL_DATABASE=documents -e MYSQL_ALLOW_EMPTY_PASSWORD=true
