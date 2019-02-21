ARG PHP_VERSION
FROM php:7.2-fpm
COPY ./sources.list /etc/apt/sources.list
RUN apt install -y libfreetype6-dev libjpeg62-turbo-dev libpng-dev && docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ && docker-php-ext-install gd && apt-get update && apt-get install -y libzip-dev && docker-php-ext-install zip && docker-php-ext-install pdo_mysql && pecl install redis
