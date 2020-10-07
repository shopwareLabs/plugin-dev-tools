#!/usr/bin/env bash
cp __PLUGIN_WORKDIR__/.make.env __SHOPWARE_ROOT__.env."__ENV__"

mv __PLUGIN_WORKDIR__/vendor/shopware/plugin-dev-tools/output/config_tmp.php __SHOPWARE_ROOT__config_"__ENV__".php

# Create database
I: echo "create database __DB_DATABASE__" | mysql -h __DB_HOST__ -u __DB_USER__ -p__DB_PASSWORD__

make CFG=.env."__ENV__" -C __SHOPWARE_ROOT__ ENV="__ENV__"

# Install plugin
php __SHOPWARE_ROOT__bin/console sw:plugin:refresh --env="__ENV__"

I: ./vendor/shopware/plugin-dev-tools/bin/exec-before-install.sh __PLUGIN_WORKDIR__ __ENV__

php __SHOPWARE_ROOT__bin/console sw:plugin:install --activate "__PLUGIN__" --env="__ENV__"

php __SHOPWARE_ROOT__bin/console sw:cache:clear --env="__ENV__"

INCLUDE: vendor/shopware/plugin-dev-tools/local/disable-search-index-regeneration.sh