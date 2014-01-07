Exec { path => ['/bin/', '/sbin/', '/usr/bin', '/usr/sbin/' ]}

exec { 'update-system':
  command => 'apt-get update'
}

@users::useraccount { 'deployer':
    ensure   => present,
    fullname => 'deployer',
    uid      => 1000,
    shell    => '/bin/zsh',
    password => 'deployer',
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

class { 'ohmyzsh': }
ohmyzsh::install { 'deployer': }

single_user_rvm::install { 'deployer': }
single_user_rvm::install_ruby { 'ruby-1.9.3-p392': user => 'deployer' }
