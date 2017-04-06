#!/usr/bin/env bash

./vendor/shopware/plugin-dev-tools/bin/create-user.sh

docker-compose build && docker-compose up -d
docker-compose run __PLUGIN_LOWERCASE__ /tmp/wait-mysql.sh