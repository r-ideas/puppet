Exec { path => ['/bin/', '/sbin/', '/usr/bin', '/usr/sbin/' ]}

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

package { 'libxml2':
  name => 'libxml2',
  ensure => 'present'
}

package { 'libxslt-dev':
  name => 'libxslt-dev',
  ensure => 'present'
}

package { 'libxml2-dev':
  name => 'libxml2-dev',
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

package { 'postgresql':
  name => 'postgresql',
  ensure => 'present'
}

package { 'libpq-dev':
  name => 'libpq-dev',
  ensure => 'present'
}
