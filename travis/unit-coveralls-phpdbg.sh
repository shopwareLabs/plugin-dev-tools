#!/usr/bin/env bash

SHOPWARE_ENV=__ENV__ phpdbg -qrr __SHOPWARE_ROOT__vendor/phpunit/phpunit/phpunit --coverage-clover=build/logs/coverage_clover.xml --verbose

