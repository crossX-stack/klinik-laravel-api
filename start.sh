#!/usr/bin/env bash

# Clear and refresh Laravel caches
php artisan config:clear
php artisan cache:clear
php artisan config:cache
php artisan route:clear
php artisan view:clear

# Run database migrations
php artisan migrate --force

# Start Laravel server
php artisan serve --host 0.0.0.0 --port 10000
