#!/bin/bash

source /tmp/functions.lib

# Vagrant provisioning script
# installs : MySQL

MYSQL_PASSWORD="Passw0rd!"

log_whoami

apt_update

log_header "Installing MySQL."
debconf-set-selections <<< "mysql-server mysql-server/root_password password ${MYSQL_PASSWORD}"
debconf-set-selections <<< "mysql-server mysql-server/root_password_again password ${MYSQL_PASSWORD}"
apt_install mysql-server
apt_install mysql-client
apt_install libmysqlclient-dev

#DEBIAN_FRONTEND=noninteractive apt-get -y install mysql-server
#mysqladmin -u root password mysecretpasswordgoeshere

# MySQL
# ------------------------------------------------

# Install MySQL (Database Server)
# (enter D3ploy3R! as the root password)
#sudo apt-get -y install mysql-server mysql-client libmysqlclient-dev

# Add a symlink to the MySQL Socket under ubuntu
#ln -s /var/run/mysqld/mysqld.sock /tmp/mysql.sock
