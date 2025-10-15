FROM php:8.1-apache

# Kerakli PHP kengaytmalar
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Apache sozlamalari
COPY . /var/www/html/
WORKDIR /var/www/html/

# Railway port
ENV PORT=8080
EXPOSE 8080

CMD ["apache2-foreground"]
