FROM php:8.1-apache

# PHP kengaytmalar
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Loyihani Apache serverga ko‘chirish
COPY . /var/www/html/
WORKDIR /var/www/html/

# Apache konfiguratsiyasi
RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf

# Railway uchun port
ENV PORT=80
EXPOSE 80

CMD ["apache2-foreground"]
