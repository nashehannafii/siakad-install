sudo apt --fix-broken install -y
sudo apt autoremove -y
sudo apt update -y
sudo apt upgrade -y

apt install apache2 -y

apt install mysql-server -y

apt install php libapache2-mod-php php-mysql -y

apt install curl -y
apt install php-cli unzip -y
curl -sS https://getcomposer.org/installer -o /tmp/composer-setup.php
HASH=`curl -sS https://composer.github.io/installer.sig`
echo $HASH
php /tmp/composer-setup.php --install-dir=/usr/local/bin --filename=composer
apt update -y

apt install npm -y