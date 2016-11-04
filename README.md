# Unidea's Development Environment #

This will install and configure a development environment for working on projects related to Ruby or Node, with the following : **rbenv, nvm, ImageMagick, MySQL, PostgresSQL and Redis**.

### Installation ###

1. Install [VirtualBox](https://www.virtualbox.org/)
2. Install [Vagrant](https://www.vagrantup.com/)
3. Checkout this repository
4. Run `vagrant up` and `vagrant ssh`
5. Inside the VM, run `cd /projects` and start working

## Primary goals ##
1. Help developpers be "up and running" in less than 15 minutes.
2. Keep the host machine as clean as possible by installing all required components inside a VM.  
3. Provide a development environment as close as possible to the production environment.

### How it's work ###
VirtualBox is a virtualization software developed by Oracle.  It creates virtual machines (guests) that can be installed and on host computer.  Vagrant gives the tools to provision (install softwares and packages), configure and interact with virtual machines.

Any project drop inside the **projects** folder will be available inside the VM at **/projects/project_name**.  So you can use your favorite text editor on your host

#### GUI tools and port fowarding ####
To connect to databases from your host, you can use your favorite GUI Tools.  Some ports are already fowarded, for your convenience.  **This could create conflicts with your current environment** if some ports are already in use by other services.

#### Working with Ruby or Rails ####
You can specify your required ruby version in a `.ruby-version` file, at the root of your project.  After, run `. ./vm-install.sh` to install project requirements.

A template folder exist in the projects directory.  

#### Working with Node.js ####
You can specify your required node version in a `.nvmrc` file, at the root of your project.  After, run `. ./vm-install.sh` to install project requirements.

A template folder exist in the projects directory.

## Requirements ##

On Mac, you need `git` to checkout this repository.  Git support comes with Xcode Command Line Tools.
You can check if the full Xcode package is already installed by typing : `xcode-select -p`.
You can install it by typing `xcode-select --install`.

If you want to keep your PC or Mac host clean, you can download this project instead.  

## Dependencies inside the VM (Ubuntu) ##
We are still working on identifiying only the packages that are requiered to install.

- **Node Version Manager (nvm)** : build-essential, libssl-dev
- **rbenv** : build-essential libssl-dev
- **nokogiri** : build-essential, patch, ruby-dev, zlib1g-dev, liblzma-dev
