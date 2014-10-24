#!/bin/bash

wget https://apt.puppetlabs.com/puppetlabs-release-precise.deb
sudo dpkg -i puppetlabs-release-precise.deb

sudo apt-get -y update
sudo apt-get -y install git
sudo apt-get -y install puppet

sudo puppet module install maestrodev/rvm
sudo puppet module install dcsobral/users
sudo puppet module install kbatra/nginx_passenger
sudo puppet module install puppetlabs/postgresql
sudo puppet module install fsalum/redis

git clone https://github.com/r-ideas/puppet.git

sudo puppet apply --verbose puppet/manifests/default.pp
