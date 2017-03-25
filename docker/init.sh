#!/usr/bin/env bash

mv __SHOPWARE_ROOT__config_tmp.php __SHOPWARE_ROOT__config_"__ENV__".php

docker-compose run __PLUGIN_LOWERCASE__ mysql -u__DB_USER__ -p__DB_PASSWORD__ -h__DB_HOST__ -e"create database __DB_DATABASE__"

docker-compose run __PLUGIN_LOWERCASE__ ant -f ./__SHOPWARE_ROOT__build/build.xml build-unit

# Install plugin
docker-compose run __PLUGIN_LOWERCASE__ php __SHOPWARE_ROOT__bin/console sw:plugin:refresh --env="__ENV__"
docker-compose run __PLUGIN_LOWERCASE__ php __SHOPWARE_ROOT__bin/console sw:plugin:install --activate "__PLUGIN__" --env="__ENV__"

docker-compose run __PLUGIN_LOWERCASE__ php __SHOPWARE_ROOT__bin/console sw:cache:clear --env="__ENV__"

INCLUDE: vendor/shopware/plugin-dev-tools/docker/disable-search-index-regeneration.sh