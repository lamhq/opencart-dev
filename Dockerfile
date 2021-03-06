FROM php:7.3-apache

RUN apt-get update && apt-get install -y \
  zlib1g-dev libzip-dev \
  libfreetype6-dev libjpeg-dev libpng-dev

RUN docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
  && docker-php-ext-install gd

RUN docker-php-ext-install zip mysqli
