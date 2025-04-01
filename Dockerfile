# Use PHP 8.3 with FPM
FROM php:8.3-fpm

# Install system dependencies
RUN apt-get update && apt-get install -y \
    git curl zip unzip nano \
    libpq-dev \
    && docker-php-ext-install pdo pdo_pgsql

# Install Composer
COPY --from=composer:latest /usr/bin/composer /usr/bin/composer

# Set working directory
WORKDIR /var/www

# Copy project files
COPY . .

# Clear Composer cache and install dependencies without running post-install scripts
RUN composer clear-cache
RUN composer install --no-dev --optimize-autoloader --no-scripts

# Set permissions for storage and cache
RUN chmod -R 775 /var/www/storage /var/www/bootstrap/cache

# Expose the Laravel port
EXPOSE 10000

# Start the app using start.sh
CMD ["bash", "start.sh"]
