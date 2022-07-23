apt update -y

apt install gnupg -y

wget -qO - https://www.mongodb.org/static/pgp/server-5.0.asc | sudo apt-key add -

touch /etc/apt/source.list.d/mongodb-org-5.0.list

cd /etc/apt/sources.list.d/

echo "deb [ arch=amd64,arm64 ] https://repo.mongodb.org/apt/ubuntu focal/mongodb-org/5.0 multiverse" | sudo tee /etc/apt/sources.list.d/mongodb-org-5.0.list

apt-get update -y

apt-get install mongodb-org -y

sudo systemctl start mongod

sudo systemctl status mongod

mongo