#!/bin/bash

chown -R www-data:www-data /var/www
cp .env.example .env
composer install
php artisan key:generate
php artisan migrate

php-fpm