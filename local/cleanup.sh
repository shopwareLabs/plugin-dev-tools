#!/usr/bin/env bash

# Clean up database
I: echo "drop database __DB_DATABASE__" | mysql -h __DB_HOST__ -u "__DB_USER__" -p"__DB_PASSWORD__"

# Remove config file
rm ./__SHOPWARE_ROOT__config_"__ENV__".php

# Clear cache
php __SHOPWARE_ROOT__bin/console sw:cache:clear --env="__ENV__"
