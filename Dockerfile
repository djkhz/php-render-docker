# FROM php:7.4.1-apache 
# COPY . .
# RUN a2enmod rewrite
# ADD . /var/www/html
# RUN docker-php-ext-install mysqli
# RUN docker-php-ext-install pdo pdo_mysql
# # RUN apt-get update && \
# #     apt-get -qq -y install php-pgsql

# RUN apt-get update && \
#     apt-get install -qq -y libpq-dev && \
#     docker-php-ext-configure pgsql -with-pgsql=/usr/local/pgsql && \
#     docker-php-ext-install pdo pdo_pgsql pgsql

# RUN docker-php-ext-configure pdo_mysql --with-pdo-mysql=mysqlnd && \
#     docker-php-ext-configure mysqli --with-mysqli=mysqlnd && \
#     docker-php-ext-install pdo_mysql
#FROM php:7.4-cli
#COPY ./local /usr/src/dst_folder
#WORKDIR /usr/src/dst_folder
#RUN docker-php-ext-install pdo pdo_mysql

# FROM richarvey/nginx-php-fpm:1.9.1

# COPY . .

# # Image config
# ENV SKIP_COMPOSER 1
# ENV WEBROOT /var/www/html/public
# ENV PHP_ERRORS_STDERR 1
# ENV RUN_SCRIPTS 1
# ENV REAL_IP_HEADER 1

# # Laravel config
# ENV APP_ENV production
# ENV APP_DEBUG false
# ENV LOG_CHANNEL stderr

# # Allow composer to run as root
# ENV COMPOSER_ALLOW_SUPERUSER 1

# CMD ["/start.sh"]
FROM php:7.2-apache

# Install mysqli
RUN docker-php-ext-install mysqli
