FROM php:8.2-fpm

RUN apt-get update && apt-get install -y \
    libpng-dev \
    libjpeg62-turbo-dev \
    libfreetype6-dev \
    libxml2-dev \
    libzip-dev \
    && docker-php-ext-configure gd --with-freetype --with-jpeg \
    && docker-php-ext-install gd zip pdo pdo_mysql

COPY ./php-ini-overrides.ini /etc/php/8.2/fpm/conf.d/99-overrides.ini

# Establecemos el directorio de trabajo
WORKDIR /var/www/html

# Exponer el puerto 9000
EXPOSE 9010

# Iniciar php-fpm
CMD ["php-fpm"]