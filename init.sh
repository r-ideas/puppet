#!/bin/sh

wget https://apt.puppetlabs.com/puppetlabs-release-precise.deb
sudo dpkg -i puppetlabs-release-precise.deb

# NOTE: updating information about packages
sudo apt-get -y update
sudo apt-get -y install git
sudo apt-get -y install puppet

# NOTE: add necessary puppet packages
sudo puppet module install maestrodev/rvm
sudo puppet module install dcsobral/users
sudo puppet module install kbatra/nginx_passenger
sudo puppet module install puppetlabs/postgresql
sudo puppet module install fsalum/redis

# NOTE: cloning repo with manifest
git clone https://github.com/r-ideas/puppet.git

# NOTE: profit
sudo puppet apply --verbose puppet/manifests/default.pp
