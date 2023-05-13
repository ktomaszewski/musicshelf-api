FROM php:8.2-apache

ARG MSA_DOCKER_PHP_PROJECT_ROOT
ARG MSA_DOCKER_PHP_APACHE_DOCUMENT_ROOT

# OS
RUN apt update && \
    apt install -y wget
# PHP
RUN apt install -y libicu-dev && \
    docker-php-ext-configure intl && \
    docker-php-ext-install intl && \
    docker-php-ext-enable intl && \
    pecl install xdebug && \
    docker-php-ext-install opcache && \
    docker-php-ext-enable opcache
# OS -- cleaning
RUN apt clean && \
    rm -rf /var/lib/apt/lists/*

# Apache
RUN sed -i "s!/var/www/html!${MSA_DOCKER_PHP_APACHE_DOCUMENT_ROOT}!g" /etc/apache2/sites-available/000-default.conf
RUN a2enmod rewrite
EXPOSE 80

# Composer
RUN curl -sS https://getcomposer.org/installer | php -- --install-dir=/usr/local/bin --filename=composer

# Symfony
RUN wget https://get.symfony.com/cli/installer -O - | bash
ENV PATH="/root/.symfony5/bin:${PATH}"

WORKDIR ${MSA_DOCKER_PHP_PROJECT_ROOT}
CMD ["apache2-foreground"]
