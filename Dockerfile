ARG PHP_VERSION
FROM php:7.2-fpm
COPY ./sources.list /etc/apt/sources.list
RUN apt-get update && apt-get install -y libfreetype6-dev libjpeg62-turbo-dev libpng-dev && docker-php-ext-configure gd --with-webp-dir=/usr/include/webp --with-jpeg-dir=/usr/include --with-png-dir=/usr/include --with-freetype-dir=/usr/include/freetype2 && apt-get update && apt-get install -y libzip-dev && docker-php-ext-install zip && docker-php-ext-install pdo_mysql && pecl install redis
