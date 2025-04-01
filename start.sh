#!/usr/bin/env bash

# Run Migrations
php artisan migrate --force

# Start Laravel Server
php artisan serve --host 0.0.0.0 --port 10000
