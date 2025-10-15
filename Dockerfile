FROM php:8.1-apache

# PHP kengaytmalarini o‘rnatish
RUN docker-php-ext-install mysqli pdo pdo_mysql

# Loyiha fayllarini Apache root’iga ko‘chirish
COPY . /var/www/html/
WORKDIR /var/www/html/

# Apache konfiguratsiyasi
RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf

# Railway uchun port sozlamasi
ENV PORT=80
EXPOSE 80

# Apache’ni ishga tushirish
CMD ["apache2-foreground"]
