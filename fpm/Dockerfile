FROM php:5.6-fpm
MAINTAINER Jo Giraerts <jo@rombit.be>
RUN apt-get update && apt-get install -y \
        libfreetype6-dev libjpeg62-turbo-dev \
        libmcrypt-dev libpng12-dev \
	curl git libpng12-dev zlib1g-dev libicu-dev \
	fontconfig libfontconfig1 libxrender1 xfonts-base xfonts-75dpi
RUN docker-php-ext-install gd mbstring pdo_mysql zip intl
COPY dist/php5-extra.ini /usr/local/etc/php/conf.d/php5-extra.ini

# We need wkhtmltopdf
COPY wkhtmltox-0.12.2_linux-jessie-amd64.deb /root
RUN dpkg -i /root/wkhtmltox-0.12.2_linux-jessie-amd64.deb

# Install Composer
RUN curl -o /usr/local/bin/composer https://getcomposer.org/composer.phar && chmod 755 /usr/local/bin/composer

# Install phpunit
RUN composer global require "phpunit/phpunit=5.2.*"

# Install phpcs
RUN composer global require "squizlabs/php_codesniffer=*"

# Set the path
ENV PATH $PATH:~/.composer/vendor/bin


