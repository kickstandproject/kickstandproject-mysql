define mysql::function::database(
) {
  exec { "mysql --defaults-file=/root/.my.cnf -uroot -e \"create database ${name};\"":
    creates => "/var/lib/mysql/${name}",
    require => Class['mysql::server::service'],
  }
}

# vim:sw=2:ts=2:expandtab
