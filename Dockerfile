FROM php:5.6-fpm

RUN apt-get update \
&& apt-get install -y libmemcached-dev zlib1g-dev \
&& pecl install memcached-2.2.0 \
&& docker-php-ext-enable memcached \
&& pecl install memcache-2.2.7 \
&& docker-php-ext-enable memcache \
&& docker-php-ext-install pdo_mysql \
&& docker-php-ext-install mysqli