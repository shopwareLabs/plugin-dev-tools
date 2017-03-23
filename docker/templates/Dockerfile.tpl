FROM php:__PHP_VERSION__-apache

RUN apt-get update \
  && apt-get install --no-install-recommends -y \
     libpng12-dev \
     libfreetype6-dev \
     libjpeg-dev \
     mysql-client \
     vim \
     ant \
     unzip \
     git

RUN docker-php-ext-configure gd --with-jpeg-dir=/usr/lib \
  && docker-php-ext-install pdo pdo_mysql mbstring gd zip

RUN a2enmod rewrite

WORKDIR /var/www/html/engine/Shopware/Plugins/Local/Frontend/SwagBundle