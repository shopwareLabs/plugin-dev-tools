<?php

return [
    'front' => [
        'throwExceptions' => true,
    ],

    'cache' => [
        'backend' => 'Black-Hole',
        'backendOptions' => [],
        'frontendOptions' => [
            'write_control' => false
        ],
    ],

    'model' => [
        'cacheProvider' => 'Array'
    ],

    'httpCache' => [
        'enabled' => true,
        'debug' => true,
    ],

    'phpsettings' => [
        'display_errors' => 1,
        'display_startup_errors' => 1
    ],

    'csrfProtection' => [
        'frontend' => false,
        'backend' => false
    ],

    'db' => [
        'username' => "__DB_USER__",
        'password' => "__DB_PASSWORD__",
        'dbname' => "__DB_DATABASE__",
        'host' => "__DB_HOST__",
        'port' => "__DB_PORT__"
    ],

    'session' => [
        'unitTestEnabled' => true,
        'name' => 'SHOPWARESID',
        'cookie_lifetime' => 0,
        'use_trans_sid' => false,
        'gc_probability' => 1,
        'gc_divisor' => 100,
        'save_handler' => 'db'
    ],
    'backendsession' => [
        'unitTestEnabled' => true,
        'name' => 'SHOPWAREBACKEND',
        'cookie_lifetime' => 0,
        'cookie_httponly' => 1,
        'use_trans_sid' => 0,
        'locking' => false,
    ],
];
