#!/bin/bash

source /tmp/functions.lib

# Vagrant provisioning script
# installs : Redis

log_whoami

log_header "Adding apt-repository."
add-apt-repository ppa:chris-lea/redis-server

apt_update

log_header "Installing Redis."
apt_install redis-server

log_header "Backuping Redis default configuration."
cp /etc/redis/redis.conf /etc/redis/redis.conf.default

# echo "--------------------------------------------------"
# echo "Starting Redis"
# service redis-server start
# service redis-server restart

log_header "Benchmarking Redis"
redis-benchmark -q -n 1000 -c 10 -P 5
