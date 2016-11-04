#!/bin/bash

PROJECT_PATH="/projects/_node_template"

echo "Switching to project path"
cd $PROJECT_PATH
echo $PWD

echo "Identifying the required Node.js version"
read -r VERSION < .nvmrc
echo "Version : ${VERSION}"

echo "Installing Node ${VERSION}"
nvm install $VERSION
