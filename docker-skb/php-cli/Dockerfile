FROM php:7.2-cli

RUN apt-get update && apt-get install -y \
        libzip-dev \
        zip \
        build-essential \
        libssl-dev \
        libpng-dev \
        libjpeg-dev \
        libfreetype6-dev \
	&& docker-php-ext-configure zip --with-libzip \
	&& docker-php-ext-install zip \
	&& docker-php-ext-install mysqli \
    && docker-php-ext-install mbstring

RUN docker-php-ext-configure gd --with-freetype-dir=/usr/include/ --with-jpeg-dir=/usr/include/ \
    && docker-php-ext-install gd

RUN docker-php-ext-install pdo_mysql
RUN pecl install xdebug-2.7.2 && docker-php-ext-enable xdebug
RUN apt-get update && apt-get install -y mariadb-client
RUN pecl install -o -f xdebug \
    && rm -rf /tmp/pear

COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

WORKDIR /var/www