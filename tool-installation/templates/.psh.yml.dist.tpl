const:
    PLUGIN:

environments:
    test:
        templates:
            - source: vendor/shopware/plugin-dev-tools/config_testing.php.tpl
              destination: path/to/shopware_root/config_testing.php
        paths:
            - vendor/shopware/plugin-dev-tools
        const:
            ENV: "testing"
            DB_USER: ""
            DB_PASSWORD: ""
            DB_HOST: ""
            DB_DATABASE: ""
            DB_PORT: "3306"