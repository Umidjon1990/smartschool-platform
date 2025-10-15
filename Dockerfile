FROM php:8.1-apache

RUN docker-php-ext-install mysqli pdo pdo_mysql

# Loyihani Apache root’iga ko‘chirish
COPY . /var/www/html/

WORKDIR /var/www/html/

# Apache sozlamalari
RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf

# Railway port sozlamasi
ENV PORT=80
EXPOSE 80

CMD ["apache2-foreground"]
