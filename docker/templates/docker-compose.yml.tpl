version: '2'

services:
  __PLUGIN_LOWERCASE__:
    build:
      context: .
      dockerfile: Dockerfile
    tty: true
    stdin_open: true
    depends_on:
      - mysql
    volumes:
      - __SHOPWARE_ROOT__:/var/www/html
    environment:
      - SHOPWARE_ENV=__ENV__
  mysql:
    image: mysql
    environment:
      MYSQL_DATABASE: __DB_DATABASE__
      MYSQL_ROOT_PASSWORD: __DB_PASSWORD__
      MYSQL_USER: __DB_USER__
      MYSQL_PASSWORD: __DB_PASSWORD__