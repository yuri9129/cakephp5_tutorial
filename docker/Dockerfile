FROM php:8.2-apache
RUN apt-get update \
    && apt-get install -y \
        libicu-dev \
        libzip-dev \
        unzip \
    && docker-php-ext-install intl opcache pdo pdo_mysql zip\
    && a2enmod rewrite
# Composerのインストール
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer