FROM php:5.6-cli
RUN apt-get update -qq \
    && apt install -yqq libpq-dev \
    && docker-php-ext-install -j$(nproc) \
        bcmath \
        pgsql \
    && pecl install xdebug \
    && echo "zend_extension=$(find /usr/local/lib/php/extensions/ -name xdebug.so)" > /usr/local/etc/php/conf.d/xdebug.ini
ADD https://getcomposer.org/installer composer-setup.php
RUN php composer-setup.php --quiet --install-dir=/usr/local/bin --filename=composer
