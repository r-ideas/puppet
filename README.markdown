Install Puppet on server
------------------------

```bash
wget https://apt.puppetlabs.com/puppetlabs-release-precise.deb
sudo apt-get -y install puppet
```

Install packages
----------------

Puppet will automatically install necessary packages:

```bash
git clone git@github.com:r-ideas/puppet.git
sudo puppet apply --verbose puppet/manifests/default.pp
```
Configure VIM syntax highlight for ``*.pp`` source files
--------------------------------------------------------
Install vim [plugin](http://github.com/rodjek/vim-puppet) with ``pathogen``:

```bash
cd ~/.vim

git submodule add -f git://github.com/rodjek/vim-puppet.git bundle/puppet
```
