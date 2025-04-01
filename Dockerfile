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

# Ensure start.sh is executable
RUN chmod +x /var/www/start.sh

# Install dependencies
RUN composer install --no-dev --optimize-autoloader

# Set permissions for storage and cache
RUN chmod -R 775 storage bootstrap/cache

# Expose the Laravel port
EXPOSE 10000

# Start Laravel server
CMD ["bash", "start.sh"]
