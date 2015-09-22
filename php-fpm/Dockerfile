FROM php:5-fpm

RUN apt-get update && apt-get install -y \
        libmcrypt-dev \
        libicu-dev \
        libxslt-dev \
        zlib1g-dev \
        curl \
        git

RUN docker-php-ext-install mcrypt intl mbstring pdo_mysql pcntl xsl zip

ENV PHP_REDIS_VERSION 2.2.7
RUN curl -L -o /tmp/redis.tar.gz https://github.com/phpredis/phpredis/archive/${PHP_REDIS_VERSION}.tar.gz \
    && tar xfz /tmp/redis.tar.gz \
    && rm -r /tmp/redis.tar.gz \
    && mv phpredis-${PHP_REDIS_VERSION} /usr/src/php/ext/redis \
    && docker-php-ext-install redis

RUN echo "y\ny" | pecl install apcu-beta \
    && echo "extension=apcu.so" > /usr/local/etc/php/conf.d/apcu.ini

RUN echo "date.timezone=UTC" > /usr/local/etc/php/conf.d/timezone.ini

ADD start.sh /start.sh

WORKDIR /var/www

RUN usermod -u 1000 www-data

ENTRYPOINT ["/start.sh"]
CMD ["php-fpm"]
