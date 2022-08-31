Prep PHP Downgrade

sudo apt install software-properties-common ca-certificates lsb-release apt-transport-https
sudo add-apt-repository ppa:ondrej/php
sudo apt-get update

PHP 7

sudo apt -y install php7.4
sudo apt-get install -y php7.4-cli php7.4-json php7.4-common php7.4-mysql php7.4-zip php7.4-gd php7.4-mbstring php7.4-curl php7.4-xml php7.4-bcmath

sudo update-alternatives --config php

sudo a2dismod php?.? #php before
sudo systemctl restart apache2

sudo a2enmod php?.?  #php you want
sudo systemctl restart apache2