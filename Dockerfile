############################################################
# Dockerfile to build Alpine,Nginx installed  Container
# Based on Alpine Linux
############################################################

# Set the base image to Alpine
FROM nginx:stable-alpine

# File Author / Maintainer
MAINTAINER Neftali Angeles <izafnat@me.com>

RUN apk add --update \
            php7-mcrypt \
            php7-openssl \
            php7-gmp \
            php7-json \
            php7-dom \
            php7-intl \
            php7-pdo \
            php7-zip \
            php7-mysqli \
            php7-bcmath \
            php7-gd \
            php7-opcache \
            php7-pdo_mysql \
            php7-gettext \
            php7-xmlreader \
            php7-xmlrpc \
            php7-bz2 \
            php7-memcached \
            php7-iconv \
            php7-curl \
            php7-ctype \
            php7-cli \ 
            php7-fpm \ 
            supervisor && rm -rf /var/cache/apk/*

#USER nginx
CMD ["nginx", "-g", "daemon off;"]
