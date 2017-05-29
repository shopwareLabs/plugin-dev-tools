#!/usr/bin/env bash

mv __PLUGIN_WORKDIR__/vendor/shopware/plugin-dev-tools/output/config_tmp.php __SHOPWARE_ROOT__config_"__ENV__".php

# Create database
I: echo "create database __DB_DATABASE__" | mysql -h __DB_HOST__ -u __DB_USER__

SHOPWARE_ENV=__ENV__ ant -f __SHOPWARE_ROOT__build/build.xml build-unit

# Install plugin
php __SHOPWARE_ROOT__bin/console sw:plugin:refresh --env="__ENV__"
php __SHOPWARE_ROOT__bin/console sw:plugin:install --activate "__PLUGIN__" --env="__ENV__"

php __SHOPWARE_ROOT__bin/console sw:cache:clear --env="__ENV__"

INCLUDE: vendor/shopware/plugin-dev-tools/travis/disable-search-index-regeneration.sh