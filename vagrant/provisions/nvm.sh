#!/bin/bash

source /tmp/functions.lib

# Vagrant provisioning script
# installs : NVM (Node Version Manager)

NVM_VERSION='v0.31.0'

log_whoami

sudo_apt_update

log_header "Installing required packages for NVM."
sudo_apt_install build-essential
sudo_apt_install libssl-dev

log_header "Installing NVM (Node Version Manager)."
curl "https://raw.githubusercontent.com/creationix/nvm/${NVM_VERSION}/install.sh" | bash
echo "source /home/vagrant/.nvm/nvm.sh" >> ~/.profile
source ~/.profile
