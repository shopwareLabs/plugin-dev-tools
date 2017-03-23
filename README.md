# plugin-dev-tools

## Description

This tools provide fast ways to solve common plugin development issues.

## Adding plugin-dev-tools to your plugin

1. Add this repository to your composer file and run `composer install`
2. Create a symlink `ln -s vendor/shopware/plugin-dev-tools/psh.phar psh`
3. Create a `.psh.yml.dist` file and configure it
4. Run `./psh`

## .psh.yml configuration tips

**Example:**

```
templates:
    - source: vendor/shopware/plugin-dev-tools/templates/config_testing.php.tpl
      destination: ../../../../../../config_testing.php
    - source: vendor/shopware/plugin-dev-tools/docker/templates/docker-compose.yml.tpl
      destination: ./docker-compose.yml
    - source: vendor/shopware/plugin-dev-tools/docker/templates/Dockerfile.tpl
      destination: ./Dockerfile

dynamic:
    PLUGIN: pwd | awk -F '/' '{print $NF}'
    PLUGIN_LOWERCASE: pwd | awk -F '/' '{print tolower($NF)}'
    DB_DATABASE: echo "test_$(pwd | awk -F '/' '{print tolower($NF)}')"
    APP_ID: echo "docker-compose ps -q $(pwd | awk -F '/' '{print tolower($NF)}')"

const:
    PHP_VERSION: "7.0"
    ENV: "testing"
    SHOPWARE_ROOT: ../../../../../../

environments:
    docker:
        paths:
         - vendor/shopware/plugin-dev-tools/docker
        const:
            DB_USER: "root"
            DB_PASSWORD: "root"
            DB_HOST: "mysql"
            DB_PORT: "3306"
    local:
        paths:
            - vendor/shopware/plugin-dev-tools/local
        const:
            DB_USER: "root"
            DB_PASSWORD: "root"
            DB_HOST: "localhost"
            DB_PORT: "3306"
```

**SHOPWARE_ROOT** configuration:
 - 5.2 Plugin-System: `../../../`
 - Old Plugin-System: `../../../../../../`
 
## Warning

Add the `psh` symlink to your `.sw-zip-blacklist` to prevent releasing a dead symlink which would break shopware updates.