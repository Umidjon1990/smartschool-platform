# PHP 8.2 + Apache
FROM php:8.2-apache

# Kerakli PHP kengaytmalari
RUN apt-get update && apt-get install -y \
    libpng-dev libjpeg62-turbo-dev libfreetype6-dev libzip-dev unzip \
 && docker-php-ext-configure gd --with-freetype --with-jpeg \
 && docker-php-ext-install gd mysqli mbstring zip

# Apache rewrite yoqish (CodeIgniter/htaccess uchun)
RUN a2enmod rewrite

# Loyihani web rootga nusxalash
COPY . /var/www/html/

# DocumentRoot ichida .htaccess ishlashi uchun
RUN sed -i 's/AllowOverride None/AllowOverride All/g' /etc/apache2/apache2.conf

# Yozish ruxsatlari (kerak bo‘ladigan papkalar)
RUN chown -R www-data:www-data /var/www/html \
 && chmod -R 775 /var/www/html/uploads || true \
 && chmod -R 775 /var/www/html/backend || true \
 && mkdir -p /var/www/html/temp && chmod -R 775 /var/www/html/temp

# Railway odatda 80-portni proksi qiladi
EXPOSE 80
