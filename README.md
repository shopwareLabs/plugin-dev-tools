# plugin-dev-tools

## Description

This tools provide fast ways to solve common plugin development issues.

## Adding plugin-dev-tools to your plugin

1. Add this repository to your composer file and run `composer install`
2. Move to `vendor/shopware/plugin-dev-tools`
4. Run `./psh.phar init-psh`
5. Move to your plugin root
6. Configure your `.psh.yml.dist`
7. Run `./psh`

## .psh.yml configuration tips

**SHOPWARE_ROOT** configuration:
 - 5.2 Plugin-System: `../../../`
 - Old Plugin-System: `../../../../../../`