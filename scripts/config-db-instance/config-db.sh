#!/bin/bash
set -e

sudo apt update -y
sudo apt install mysql-server -y
source db.env
PASSWDB=$(openssl rand -base64 12)

sudo mysql <<EOF
CREATE DATABASE IF NOT EXISTS ${MAINDB};
CREATE USER IF NOT EXISTS '${USER_NAME}'@'%' IDENTIFIED BY '${PASSWDB}';
GRANT ALL PRIVILEGES ON ${MAINDB}.* TO '${USER_NAME}'@'%';
FLUSH PRIVILEGES;
EOF

sudo sed -i 's/bind-address.*/bind-address = 0.0.0.0/' \
/etc/mysql/mysql.conf.d/mysqld.cnf

sudo systemctl restart mysql
echo "db: $MAINDB"
echo "User: $USER_NAME"
echo "Password: $PASSWDB"