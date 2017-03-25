#!/usr/bin/env bash

docker-compose build && docker-compose up -d
docker-compose run __PLUGIN_LOWERCASE__ /tmp/wait-mysql.sh