#!/bin/bash

source /tmp/functions.lib

# Vagrant provisioning script
# installs : rbenv (Ruby Version Manager)

log_whoami

sudo_apt_update

log_header "Installing required packages for Ruby and Gems."
sudo_apt_install git-core
sudo_apt_install build-essential
sudo_apt_install libssl-dev
sudo_apt_install zlib1g-dev
sudo_apt_install libreadline-dev

if [ -d ~/.rbenv ]; then
  log_header "Removing previous rbenv installation."
  rm -rf ~/.rbenv
fi

if ! [ -d ~/.rbenv ]; then
  log_header  "Installing rbenv, rbenv-vars and ruby-build for multiple Ruby versions."
  git clone https://github.com/rbenv/rbenv.git ~/.rbenv
  git clone https://github.com/rbenv/rbenv-vars.git ~/.rbenv/plugins/rbenv-vars
  git clone https://github.com/rbenv/ruby-build.git ~/.rbenv/plugins/ruby-build
  #touch ~/.profile
  echo 'export PATH="$HOME/.rbenv/bin:$PATH"' >> ~/.profile
  echo 'export PATH="$HOME/.rbenv/plugins/ruby-build/bin:$PATH"' >> ~/.profile
  echo 'eval "$(rbenv init -)"' >> ~/.profile
  source ~/.profile
  # reset
fi

if [ -f ~/.profile ]; then
  log_str "rbenv version is : $(rbenv -v)."
fi
