#!/bin/bash

source /tmp/functions.lib

# Vagrant provisioning script
# installs : make, curl, git, imagemagick and other essentials packages

log_whoami

apt_update

log_header "Setting Timezone for the Vagrant VM (since Ubuntu 14.04)."
timedatectl set-timezone America/New_York

log_header "Installing software-properties-common." "Allows to easily manage distributions and independent software vendor software sources."
apt_install software-properties-common

log_header "Installing make (to build executables)."
apt_install make

log_header "Installing curl (to get and send files using various protocols)."
apt_install curl

log_header "Adding git (to work with repositories)."
apt_install git-core

log_header "Installing required packages for rbenv, Ruby and Gems."
apt_install build-essential
apt_install libcurl4-openssl-dev
apt_install libreadline-gplv2-dev
apt_install libffi-dev
apt_install libssl-dev
apt_install libxml2-dev
apt_install libxslt1-dev
apt_install libyaml-dev
apt_install tklib
apt_install zlib1g-dev

log_header "Adding ImageMagick, required for image processing."
apt_install imagemagick
