#!/usr/bin/env bash

# Clean up database
I: docker-compose run __PLUGIN_LOWERCASE__ mysql -h__DB_HOST__ -u"__DB_USER__" -p"__DB_PASSWORD__" -e"drop database __DB_DATABASE__"

# Remove config file
docker-compose run __PLUGIN_LOWERCASE__ rm __SHOPWARE_ROOT__config_"__ENV__".php

# Clear cache
docker-compose run __PLUGIN_LOWERCASE__ php __SHOPWARE_ROOT__bin/console sw:cache:clear --env="__ENV__"
