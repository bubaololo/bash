#!/bin/bash
PASSWORD="changeme"
sudo apt-get update
sudo apt-get upgrade -y
apt-get -y install curl nano mc openssl git htop zip unzip
apt install mysql-server memcached redis -y
sudo apt install software-properties-common apt-transport-https -y
ulimit 65535
add-apt-repository ppa:ondrej/php -y
apt install php8.1 -y
apt install php-common php-fpm php-memcached php-cli php-curl php-gd php-mysql php-imagick php-mbstring php-xml -y
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
sudo apt-get install ufw -y
sudo ufw allow 3389
sudo apt install xrdp 
cd /home/root
echo "xfce4-session" > .xsession
cd
sudo /etc/init.d/xrdp restart
sudo systemctl enable xrdp
sudo apt install xfce4 
sudo systemctl start xrdp
adduser remote
sudo usermod -aG sudo remote
sudo apt install xfce4-clipman -y
