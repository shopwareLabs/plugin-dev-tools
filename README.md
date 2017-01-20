# plugin-dev-tools

## Description

This tools provide fast ways to solve common plugin development issues.

## Adding plugin-dev-tools to your plugin

1. Add this repository to your composer file and run `composer install`
2. Create a symlink `ln -s vendor/shopware/plugin-dev-tools/psh.phar psh`
3. Configure your `.psh.yml.dist.example` and rename it to `.psh.yml.dist`
4. Run `./psh`

## .psh.yml configuration tips

**Example:**
```
const:
    PLUGIN: SwagBackendOrder
    SHOPWARE_ROOT: ../../../

environments:
    test:
        templates:
            - source: vendor/shopware/plugin-dev-tools/testing/templates/config_testing.php.tpl
              destination: ../../../config_testing.php
        paths:
            - vendor/shopware/plugin-dev-tools/testing
        const:
            ENV: "testing"
            DB_USER: "root"
            DB_PASSWORD: "root"
            DB_HOST: "localhost"
            DB_DATABASE: "test_swag_backend_order"
            DB_PORT: "3306"
```

**SHOPWARE_ROOT** configuration:
 - 5.2 Plugin-System: `../../../`
 - Old Plugin-System: `../../../../../../`