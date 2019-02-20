ARG PHP_VERSION
FROM php:7.2-fpm
COPY ./sources.list /etc/apt/sources.list
RUN apt-get update && apt-get install -y libzip-dev && docker-php-ext-install zip && docker-php-ext-install pdo_mysql && pecl install redis