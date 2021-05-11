FROM php:8.0-fpm-alpine

# Use the default production configuration
RUN mv "$PHP_INI_DIR/php.ini-development" "$PHP_INI_DIR/php.ini"

RUN apk add --no-cache --update --virtual buildDeps gcc make g++ autoconf \
     && pecl install xdebug \
     && docker-php-ext-enable xdebug \
     && apk del buildDeps \
    && echo "xdebug.mode=develop,debug" >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini \
    && echo "xdebug.client_host=host.docker.internal" >> /usr/local/etc/php/conf.d/docker-php-ext-xdebug.ini
RUN addgroup -g 1000 volumegroup
RUN addgroup www-data volumegroup