FROM devwithlando/php:8.1-fpm-4

# Upgrade system
RUN apt-get update && apt-get -y upgrade

# Instal system tools
RUN apt-get install tree nano

# Install locales
RUN apt-get install -y locales locales-all

# Install Node.js
RUN curl -fsSL https://deb.nodesource.com/setup_lts.x | bash -
RUN apt-get install -y nodejs

# Instal/update NPM
RUN npm install npm --global
