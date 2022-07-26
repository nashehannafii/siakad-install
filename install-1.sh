#INSTALL SIAKAD

#Update Upgrade
apt autoremove -y
apt update -y
apt upgrade -y


#install LAMPP
apt install mysql-server
apt install php libapache2-mod-php php-mysql
apt install phpmyadmin php-mbstring php-zip php-gd php-json php-curl

systemctl restart apache2



#add user guide
mysql

echo '
Ikuti perintah berikut:

CREATE USER 'nasheh'@'localhost' IDENTIFIED BY 'bismillah';
GRANT ALL PRIVILEGES ON *.* TO 'nasheh'@'localhost' WITH GRANT OPTION;
FLUSH PRIVILEGES;
CREATE DATABASE siakadunida_simak;
CREATE DATABASE unidagon_portal;
';
