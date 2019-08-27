FROM php:7.0-apache

# Docker labels
LABEL maintainer="https://github.com/rdrgporto" \
description="Python and PHP Application"

RUN apt-get update && apt-get install -y python python-pip
RUN pip install pygments

COPY app /var/www/html/
