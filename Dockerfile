FROM php:8.2-apache

RUN docker-php-ext-install mysqli mbstring

COPY . /var/www/html/

RUN chown -R www-data:www-data /var/www/html \
    && chmod -R 755 /var/www/html
 /etc/apache2/sites-available/000-default.conf

EXPOSE 80

CMD ["apache2-foreground"]