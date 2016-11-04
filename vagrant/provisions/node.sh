#!/bin/bash

source /tmp/functions.lib

# Vagrant provisioning script
# installs : node.js

NODE_VERSION='5.0'

log_whoami

# log_header "Sourcing ~/.nvm/nvm.sh"
# source ~/.nvm/nvm.sh

log_header "Sourcing ~/.profile"
source ~/.profile

log_str "nvm version is...$(nvm --version)"

log_header "Installing Node.js with Node Version Manager."
run_command "nvm install ${NODE_VERSION}"
run_command "nvm alias default ${NODE_VERSION}"
