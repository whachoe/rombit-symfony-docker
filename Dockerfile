FROM php:5-fpm
MAINTAINER Jo Giraerts <jo@rombit.be>
RUN apt-get update && apt-get install -y \
        libfreetype6-dev libjpeg62-turbo-dev \
        libmcrypt-dev libpng12-dev \
	curl git libpng12-dev zlib1g-dev libicu-dev \
    && docker-php-ext-install gd mbstring pdo_mysql zip intl
