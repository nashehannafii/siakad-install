apt install curl
apt install php-cli unzip
curl -sS https://getcomposer.org/installer -o /tmp/composer-setup.php
HASH=`curl -sS https://composer.github.io/installer.sig`
echo $HASH
php /tmp/composer-setup.php --install-dir=/usr/local/bin --filename=composer
apt update -y

composer