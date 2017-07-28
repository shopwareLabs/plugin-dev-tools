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

## Add custom plugin setups
Add a script to add a custom installation routine which will be executed by the plugin-dev-tools.

 - add a `before_install_plugin.sh` in your plugin root directory
 - `chmod +x before_plugin_install.sh`

## Coverall support on travis

[coveralls.io](https://coveralls.io/)

1. Create a `build/logs/` directory in your plugin
2. Execute your tests `./psh travis:unit-coveralls`
3. Add to the travis `after_success` this line `./psh travis:send-coverall-report` to send the coverage report 

## Example

You can find an example here: https://github.com/shopwareLabs/SwagBackendOrder