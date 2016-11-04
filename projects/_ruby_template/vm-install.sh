#!/bin/bash

PROJECT_PATH="/projects/_ruby_template"

echo "Updating available package."
sudo apt-get update

echo "Installing required packages for Nokogiri"
sudo apt-get install -y build-essential
sudo apt-get install -y patch
sudo apt-get install -y ruby-dev
sudo apt-get install -y zlib1g-dev
sudo apt-get install -y liblzma-dev

echo "Switching to project path"
cd $PROJECT_PATH
echo $PWD

if [ -d ~/.rbenv ]; then

  echo "Identifying the required ruby version"
  read -r VERSION < .ruby-version
  echo "Version : ${VERSION}"

  echo "Installing Ruby ${VERSION}."
  CONFIGURE_OPTS="--disable-install-doc" rbenv install -v $VERSION
  rbenv rehash
  echo "Ruby version is : ${rbenv version}."

  echo "Ruby executable location is : ${rbenv which ruby}."


  echo "Installing Bundler."
  gem install bundler --no-document
  rbenv rehash

  echo "Installing gems (listed in Gemfile)."
  bundle install #--binstubs

  echo "Rehashing rbenv."
  echo "This will install shims for all Ruby executables known to rbenv."
  rbenv rehash

  echo "Creating, Migrating and Seeding database."
  bundle exec rake db:create
  bundle exec rake db:migrate
  bundle exec rake db:seed

else
  echo "rbenv is not installed."
fi
