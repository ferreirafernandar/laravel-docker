#!/bin/bash

chown -R www-data:www-data /var/www
composer install
php artisan config:cache
php artisan config:clear
php artisan key:generate
php artisan migrate

php-fpm