FROM php:8.2-apache
RUN apt-get update && apt-get install -y libicu-dev \
    && docker-php-ext-install intl opcache pdo pdo_mysql \
    && a2enmod rewrite
# Composerのインストール
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer