#!/bin/bash
PASSWORD="changeme"
sudo apt-get update
sudo apt-get upgrade -y
apt-get -y install curl nano mc openssl git htop zip unzip
apt install mysql-server redis -y
apt install nginx -y
sudo apt install software-properties-common apt-transport-https -y
add-apt-repository ppa:ondrej/php -y
apt install php8.2-common php8.2-fpm php8.2-cli php8.2-curl php8.2-gd php-mysql php-redis php-imagick php-mbstring php-xml -y
php -r "readfile('https://getcomposer.org/installer');" | php
mv ./composer.phar /usr/bin/composer
cd
curl -o- https://raw.githubusercontent.com/nvm-sh/nvm/v0.35.3/install.sh | bash
source ~/.bashrc
nvm install node
apt install npm -y
useradd -m -s /bin/bash -g www-data developer
sudo passwd developer
sudo find /var/www -type d -exec chown developer:www-data {} \; -print
sudo find /var/www -type f -exec chown developer:www-data {} \; -print
sudo find /var/www -type d -exec chmod 777 {} \; -print
echo "$HOME/.config/composer/vendor/bin" > .bashrc
