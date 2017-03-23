# plugin-dev-tools

## Description

This tools provide fast ways to solve common plugin development issues.

## Adding plugin-dev-tools to your plugin

1. Add this repository to your composer file and run `$ composer install`
2. Create a symlink `$ ln -s vendor/shopware/plugin-dev-tools/psh.phar psh`
3. Go to `vendor/shopware/plugin-dev-tools` and run `$ ./install.sh`
4. Go to your plugin-root and run `$ ./psh`

## .psh.yml configuration tips

**Example:**

Look at `config/.psh.yml.dist`
 
## Warning

Add the `psh` symlink to your `.sw-zip-blacklist` to prevent releasing a dead symlink which would break shopware updates.