class mysql::server::config {
  file { $mysql::params::basedir:
    ensure  => directory,
    require => Class['mysql::server::install'],
  }

  file { $mysql::params::configdir:
    ensure  => directory,
    require => File[$mysql::params::basedir],
  }

  file { '/root/.my.cnf':
    ensure  => file,
    content => template('mysql/root/my.cnf.erb'),
    mode    => '0400',
    require => Class['mysql::server::install'],
  }
}

# vim:sw=2:ts=2:expandtab:textwidth=79
