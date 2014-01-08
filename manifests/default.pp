Exec { path => ['/bin/', '/sbin/', '/usr/bin', '/usr/sbin/' ]}

package { 'git':
  name => 'git-core',
  ensure => 'present'
}

package { 'vim':
  name  => 'vim',
  ensure => 'present'
}

package { 'curl':
  name => 'curl',
  ensure => 'present'
}

package { 'nodejs':
  name => 'nodejs',
  ensure => 'present'
}

package { 'imagemagick':
  name => 'imagemagick',
  ensure => 'present'
}

package { 'libmagickwand-dev':
  name => 'libmagickwand-dev',
  ensure => 'present'
}

package { 'zsh':
  name => 'zsh',
  ensure => 'present'
}

group { 'deployer':
  ensure => 'present'
}

user { 'deployer':
  ensure => 'present',
  home => '/home/deployer',
  name => 'deployer',
  shell => '/bin/bash',
  managehome => true,
  groups => 'deployer',
}

class { 'nginx_passenger':
  ruby_version => 'ruby-1.9.3-p392',
}

rvm::system_user { 'deployer': }

class { 'postgresql::server': }

class { 'redis': }
