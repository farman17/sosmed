FROM php:7.2-apache

RUN docker-php-ext-install pdo pdo_mysql

WORKDIR /var/www/html

COPY . /var/www/html/ 

FROM nginx

COPY . /usr/share/nginx/html/

