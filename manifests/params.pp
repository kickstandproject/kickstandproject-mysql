class mysql::params {
  $basedir = $::operatingsystem ? {
    default => '/etc/mysql',
  }

  $configdir = $::operatingsystem ? {
    default => '/etc/mysql/conf.d',
  }

  $group = $::operatingsystem ? {
    default => 'root',
  }

  $hasstatus = $::operatingsystem ? {
    default => false,
  }

  $mode = $::operatingsystem ? {
    default => '0644',
  }

  $owner = $::operatingsystem ? {
    default => 'root',
  }

  $packagename = $::operatingsystem ? {
    default => 'mysql-server',
  }

  $processname = $::operatingsystem ? {
    default => 'mysqld',
  }

  $servicename = $::operatingsystem ? {
    default => 'mysql',
  }
}

# vim:sw=2:ts=2:expandtab:textwidth=79
