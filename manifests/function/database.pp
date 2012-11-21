define mysql::function::database(
) {
  exec { "create-${name}-db":
    command => "mysql --defaults-file=/root/.my.cnf -uroot -e \"create database ${name};\"",
    require => Class['mysql::server::service'],
  }
}

# vim:sw=2:ts=2:expandtab:textwidth=79
