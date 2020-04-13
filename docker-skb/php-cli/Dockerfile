FROM php:7.2-cli

RUN apt-get update && apt-get install -y \
        libzip-dev \
        zip \
	&& docker-php-ext-configure zip --with-libzip \
	&& docker-php-ext-install zip \
	&& docker-php-ext-install mysqli

RUN docker-php-ext-install pdo_mysql
RUN pecl install xdebug-2.7.2 && docker-php-ext-enable xdebug
RUN apt-get update && apt-get install -y mariadb-client

COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

WORKDIR /var/www