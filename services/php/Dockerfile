FROM php:5.6.24-cli
MAINTAINER Matt Light <matt.light@lightdatasys.com>
RUN apt-get update -qq \
    && apt install -yqq \
        libpq-dev \
        git \
        postgresql-client \
    && docker-php-ext-install -j$(nproc) \
        bcmath \
        pdo_pgsql \
        zip \
    && pecl install xdebug \
    && docker-php-ext-enable xdebug
ADD https://getcomposer.org/installer composer-setup.php
RUN php composer-setup.php --quiet --install-dir=/usr/local/bin --filename=composer
COPY php.ini /usr/local/etc/php/

VOLUME [ "/hodor" ]
WORKDIR /hodor

ENTRYPOINT ["make"]
CMD ["test"]
