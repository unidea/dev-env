#!/bin/bash

source /tmp/functions.lib

# Vagrant provisioning script
# installs : Nothing

log_whoami

apt_clean

log_header "Removing lib files used by provisioning scripts."
rm -f /tmp/constants.lib
rm -f /tmp/functions.lib
