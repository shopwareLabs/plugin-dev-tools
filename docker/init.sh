#!/usr/bin/env bash

docker-compose up --build --remove-orphans -d

docker-compose run __PLUGIN_LOWERCASE__ ant -f ./__SHOPWARE_ROOT__build/build.xml build-unit

# Install plugin
docker-compose run __PLUGIN_LOWERCASE__ php __SHOPWARE_ROOT__bin/console sw:plugin:refresh --env="__ENV__"
docker-compose run __PLUGIN_LOWERCASE__ php __SHOPWARE_ROOT__bin/console sw:plugin:install --activate "__PLUGIN__" --env="__ENV__"

docker-compose run __PLUGIN_LOWERCASE__ php __SHOPWARE_ROOT__bin/console sw:cache:clear --env="__ENV__"