#!/usr/bin/env bash

if [ ! -d vendor ]; then
  composer install
fi

php artisan migrate
php artisan db:seed --force
php -S 0.0.0.0:8080 -t public
