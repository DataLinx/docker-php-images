FROM devwithlando/php:7.4-fpm-4

# Upgrade system
RUN apt-get update && apt-get -y upgrade

# Install system tools
RUN apt-get install -y tree nano

# Install locales
RUN apt-get install -y locales locales-all

# Add PHP extension helper
ADD https://github.com/mlocati/docker-php-extension-installer/releases/latest/download/install-php-extensions /usr/local/bin/

# Install PHP extensions
RUN chmod +x /usr/local/bin/install-php-extensions && sync && \
  install-php-extensions sqlsrv pdo_sqlsrv

# Install Node.js
RUN curl -fsSL https://deb.nodesource.com/setup_lts.x | bash -
RUN apt-get install -y nodejs

# Instal/update NPM
RUN npm install npm --global
