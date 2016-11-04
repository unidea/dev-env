#!/bin/bash

source /tmp/functions.lib

# Vagrant provisioning script
# Generates : ssh-key

log_whoami

log_header "Generating ssh-key for current VM"
ssh-keygen -q -t rsa -f ~/.ssh/id_rsa -N ''

log_str "RSA key for GitHub and Bitbucket is :"
ssh-keygen -y -f ~/.ssh/id_rsa
