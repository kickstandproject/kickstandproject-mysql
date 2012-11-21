define mysql::function::user(
  $password,
  $host = 'localhost'
) {
  exec { "mysql --defaults-file=/root/.my.cnf -uroot -e \"create user '${name}'@'${host}' identified by PASSWORD '${password}';\"":
    require => Class['mysql::server::service'],
  }
}

# vim:sw=2:ts=2:expandtab
