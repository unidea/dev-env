# Unidea Development environment #

This will install and configure a development environment for working on projects related to Ruby or Node, with the following : rbenv, nvm, ImageMagick, MySQL, PostgresSQL and Redis.

### Installation ###

1. Install [VirtualBox](https://www.virtualbox.org/)
2. Install [Vagrant](https://www.vagrantup.com/)
3. Checkout this repository
4. Run `vagrant up` and `vagrant ssh`
5. Inside the VM, run `cd /projects` and start working

### Requirements ###

On Mac, you need `git` to checkout this repository.  Git support comes with Xcode Command Line Tools.
You can check if the full Xcode package is already installed by typing : `xcode-select -p`.
You can install it by typing `xcode-select --install`.

## Dependencies inside the VM (Ubuntu) ##

##### Node Version Manager (nvm) #####
build-essential libssl-dev

##### rbenv #####
build-essential libssl-dev

##### nokogiri #####
build-essential patch ruby-dev zlib1g-dev liblzma-dev
