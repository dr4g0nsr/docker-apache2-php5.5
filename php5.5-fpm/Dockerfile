FROM ubuntu:16.04

MAINTAINER Dragutin Cirkovic <dcirkovic@gmail.com>

# PHP
ENV PHP_MODS_DIR=/etc/php5/mods-available
ENV PHP_CLI_DIR=/etc/php5/cli/
ENV PHP_CLI_CONF_DIR=${PHP_CLI_DIR}/conf.d
ENV PHP_CGI_DIR=/etc/php5/cgi/
ENV PHP_CGI_CONF_DIR=${PHP_CGI_DIR}/conf.d
ENV PHP_FPM_DIR=/etc/php5/fpm/
ENV PHP_FPM_CONF_DIR=${PHP_FPM_DIR}/conf.d
ENV PHP_FPM_POOL_DIR=${PHP_FPM_DIR}/pool.d

# UPDATE/ONDREJ
RUN apt-get update
RUN apt-get -y install software-properties-common
RUN apt-add-repository -y ppa:ondrej/php
RUN apt-get update

# INSTALL PHP5.5
RUN apt-get -y --allow-unauthenticated install php5.5
RUN apt-get -y --allow-unauthenticated install php5.5-fpm
RUN apt-get -y --allow-unauthenticated install php5.5-mysql
RUN apt-get -y --allow-unauthenticated install php5.5-mcrypt
RUN apt-get -y --allow-unauthenticated install php5.5-dev

# INSTALL CURL,NANO
RUN apt-get -y install curl
RUN apt-get -y install nano

# X-Debug
RUN apt-get -y --allow-unauthenticated install php-xdebug
RUN echo "xdebug.remote_enable=1" >> /etc/php/5.5/mods-available/xdebug.ini
RUN echo "xdebug.remote_connect_back=1" >> /etc/php/5.5/mods-available/xdebug.ini

EXPOSE 9000
