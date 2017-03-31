# plugin-dev-tools

## Description

This tools provide fast ways to solve common plugin development issues.

## Adding plugin-dev-tools to your plugin

1. Add this repository to your composer file and run `$ composer install`
2. Create a symlink `$ ln -s vendor/shopware/plugin-dev-tools/psh.phar psh`
3. Go to `vendor/shopware/plugin-dev-tools` and run `$ ./install.sh`
4. Go to your plugin-root and run `$ ./psh`

## Warning

Add the `psh` symlink to your `.sw-zip-blacklist` to prevent releasing a dead symlink which would break shopware updates.

## Commands

```
    docker:cleanup - Cleansup the shopware installation
    docker:destroy - Destorys all docker containers
    docker:init - Similar to local:init, builds shopware
    docker:ssh - Connect to your app docker container via ssh
    docker:start - Start docker containers
    docker:stop - Stops all docker containers
    docker:unit - Runs unit tests
    
    local:init - Prepares your shopware installation
    local:cleanup - Cleans up your shopware installation
    local:reinstall - Reinstalls the current plugin
    local:unit - Runs unit tests
    local:unit-coverage - Generates coverage to ~/plugin-coverage/{plugin-name}
```