FROM php:5.6-cli
MAINTAINER Matt Light <matt.light@lightdatasys.com>
RUN apt-get update -qq \
    && apt install -yqq libpq-dev \
    && docker-php-ext-install -j$(nproc) \
        bcmath \
        pgsql \
    && pecl install xdebug \
    && docker-php-ext-enable xdebug
ADD https://getcomposer.org/installer composer-setup.php
RUN php composer-setup.php --quiet --install-dir=/usr/local/bin --filename=composer
