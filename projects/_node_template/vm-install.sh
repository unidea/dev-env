#!/bin/bash

# Vagrant provisioning script
# installs : Ruby, Bunbler and the application bundle in /vagrant_data/app_name

PROJECT_PATH="/projects/_node_template"

echo "Switching to project path"
cd $PROJECT_PATH
echo $PWD

echo "Identifying the required Node.js version (.nvmrc)"
read -r VERSION < .nvmrc
echo "Version : ${VERSION}"

echo "Installing Node ${VERSION}"
nvm install
