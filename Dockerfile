FROM php:8.1-apache

RUN docker-php-ext-install mysqli pdo pdo_mysql
RUN echo "ServerName localhost" >> /etc/apache2/apache2.conf
RUN sed -i 's|/var/www/html|/var/www/html|g' /etc/apache2/sites-available/000-default.conf

COPY . /var/www/html/
WORKDIR /var/www/html/

ENV PORT=80
EXPOSE 80

CMD ["apache2-foreground"]
