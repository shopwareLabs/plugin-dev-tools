#!/usr/bin/env bash

# Setup testing environment
# Create database
I: echo "create database __DB_DATABASE__" | mysql -h __DB_HOST__ -u __DB_USER__ -p__DB_PASSWORD__

SHOPWARE_ENV=__ENV__ ant -f ./__SHOPWARE_ROOT__build/build.xml build-unit

# Install plugin
php __SHOPWARE_ROOT__bin/console sw:plugin:refresh --env="__ENV__"
php __SHOPWARE_ROOT__bin/console sw:plugin:install --activate "__PLUGIN__" --env="__ENV__"

php __SHOPWARE_ROOT__bin/console sw:cache:clear --env="__ENV__"

INCLUDE: vendor/shopware/plugin-dev-tools/local/disable-search-index-regeneration.sh