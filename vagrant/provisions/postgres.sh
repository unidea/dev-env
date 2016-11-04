#!/bin/bash

source /tmp/functions.lib

# Vagrant provisioning script
# installs : Prosgres

log_whoami

apt_update

log_header "Installing Prosgres."
apt_install postgresql
apt_install postgresql-contrib
apt_install postgresql-server-dev-9.3

log_header "Adding a password to postgres user."
sudo -u postgres psql -c "ALTER USER postgres WITH PASSWORD 'P0stgres';"

log_header "Creating a vagrant user and setting a password for it"
sudo -u postgres psql -c "CREATE USER vagrant WITH PASSWORD 'VagranT';"
sudo -u postgres psql -c "ALTER USER vagrant WITH SUPERUSER;"

log_header "Restarting the Postgres Server."
sudo service postgresql restart

#echo "----------------------------------------------------------------------"
#echo "Creating a vagrant user in Postgres with createuser (inverse of dropuser)"
#sudo -u postgres createuser vagrant --superuser
