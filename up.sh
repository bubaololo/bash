#!/bin/bash

PASSWORD="changeme"
sudo apt-get update
sudo apt-get upgrade -y
sudo apt install nano -y
sudo apt install mc -y
sudo apt install htop -y
sudo apt install php php-common php-fpm php-cli php-curl php-gd php-mysql php-imagick php-mbstring php-xml phpunit -y
php -r "readfile('https://getcomposer.org/installer');" | php
sudo apt install mysql -y
sudo apt install git -y
sudo apt-get install ufw -y
sudo ufw allow 3389
sudo apt install xrdp 
cd /home/root
echo "xfce4-session" > .xsession
cd
sudo /etc/init.d/xrdp restart
sudo systemctl enable xrdp
sudo systemctl status xrdp
sudo apt install xfce4 
sudo systemctl start xrdp
adduser remote
sudo usermod -aG sudo remote
sudo apt install xfce4-clipman
