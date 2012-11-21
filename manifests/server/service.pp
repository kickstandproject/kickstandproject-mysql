class mysql::server::service {
  service { $mysql::params::servicename:
    ensure     => running,
    enable     => true,
    hasrestart => true,
    hasstatus  => $mysql::params::hasstatus,
    require    => Class['mysql::server::config'],
  }
}

# vim:sw=4:ts=4:expandtab:textwidth=79
