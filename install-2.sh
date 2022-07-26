#INSTALL SIAKAD

#install git
apt update -y
apt install git
apt update -y



#install composer
apt install curl
apt install php-cli unzip
curl -sS https://getcomposer.org/installer -o /tmp/composer-setup.php
HASH=`curl -sS https://composer.github.io/installer.sig`
echo $HASH
php /tmp/composer-setup.php --install-dir=/usr/local/bin --filename=composer
apt update -y

#downgrade composer
composer self-update --1



#install node
apt update -y
apt install npm
apt update -y



#setup hosts
mkdir /var/www/html/log

echo '<VirtualHost *:80>
        ServerAlias local.sia.com
        ServerName sia.com.local
        ServerAdmin pptik@unida.gontor.ac.id
        DocumentRoot /var/www/html/siakad/

        ErrorLog /var/www/html/log/error_siakad.log
        CustomLog /var/www/html/log/access_siakad.log combined

        <Directory /var/www/html/siakad/>
                Options Indexes FollowSymLinks
                AllowOverride All
                Require all granted
        </Directory>
</VirtualHost>'>>/etc/apache2/sites-available/sia.conf

echo '<VirtualHost *:80>
        ServerAlias local.central.com
        ServerName central.com.local
        ServerAdmin pptik@unida.gontor.ac.id
        DocumentRoot /var/www/html/central/

        ErrorLog /var/www/html/log/error_central.log
        CustomLog /var/www/html/log/access_central.log combined

        <Directory /var/www/html/central/>
                Options Indexes FollowSymLinks
                AllowOverride All
                Require all granted
        </Directory>
</VirtualHost>'>>/etc/apache2/sites-available/central.conf

echo '<VirtualHost *:80>
        ServerAlias local.sikap.com
        ServerName sikap.com.local
        ServerAdmin pptik@unida.gontor.ac.id
        DocumentRoot /var/www/html/sikap/

        ErrorLog /var/www/html/log/error_sikap.log
        CustomLog /var/www/html/log/access_sikap.log combined

        <Directory /var/www/html/sikap/>
                Options Indexes FollowSymLinks
                AllowOverride All
                Require all granted
        </Directory>
</VirtualHost>'>>/etc/apache2/sites-available/sikap.conf

a2ensite sia.conf
a2ensite central.conf
a2ensite sikap.conf
a2enmod rewrite

systemctl restart apache2



#download App (siakad, central, sikap)
cd /var/www/html/
git clone https://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@github.com/virgantara/siakadv2.git
git clone https://gitlab.com/virgantara/central.git
git clone https://gitlab.com/virgantara/unida-simpel.git

