#!/bin/bash

source /tmp/functions.lib

# Vagrant provisioning script
# installs : Ruby via rbenv

RUBY_VERSION='2.2.3'

log_whoami

log_header "Installing Ruby ${RUBY_VERSION}."

if [ -d ~/.rbenv ]; then
  run_command "CONFIGURE_OPTS='--disable-install-doc' rbenv install -v ${RUBY_VERSION}"
  rbenv rehash
  rbenv global $RUBY_VERSION

  log_str "Ruby version is :  $(ruby -v)."
  log_str "Ruby executable location is : $(rbenv which ruby)."
else
  log_str "rvenv is not installed."
fi

log_header "Preventing gems to install ri and rdoc."
echo 'gem: --no-document' >> ~/.gemrc
