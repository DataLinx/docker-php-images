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

# Install build dependencies for screen
RUN apt-get install -y build-essential libncurses5-dev automake texinfo wget \
    git libtool pkg-config m4 perl

# Install newer Autoconf version
RUN wget https://ftp.gnu.org/gnu/autoconf/autoconf-2.71.tar.gz && \
    tar -xzf autoconf-2.71.tar.gz && \
    cd autoconf-2.71 && \
    ./configure && \
    make && \
    make install && \
    cd .. && \
    rm -rf autoconf-2.71 autoconf-2.71.tar.gz

# Download, compile and install screen 5.0.0
RUN wget https://ftp.gnu.org/gnu/screen/screen-5.0.0.tar.gz && \
    tar -xzf screen-5.0.0.tar.gz && \
    cd screen-5.0.0 && \
    ./autogen.sh && \
    ./configure && \
    make && \
    make install && \
    cd .. && \
    rm -rf screen-5.0.0 screen-5.0.0.tar.gz

# Install zsh and ohmyzsh
RUN apt-get install -y zsh
USER www-data

RUN cd /var/www && \
    wget https://install.ohmyz.sh -O install.sh && \
    CHSH=yes RUNZSH=no KEEP_ZSHRC=no sh install.sh && \
    rm install.sh

# Create default .zshrc in home directory
RUN echo 'export ZSH="$HOME/.oh-my-zsh"\n\
ZSH_THEME="crunch"\n\
plugins=(git laravel)\n\
source $ZSH/oh-my-zsh.sh\n' > ~/.zshrc

USER root
