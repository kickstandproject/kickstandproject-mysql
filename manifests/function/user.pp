define mysql::function::user(
  $password,
  $host = 'localhost'
) {
  $sql = "mysql --defaults-file=/root/.my.cnf -uroot -e \"CREATE USER '${name}'@'${host}' IDENTIFIED BY '${password}';\"":

  exec { $sql:
    require => Class['mysql::server::service'],
  }
}

# vim:sw=2:ts=2:expandtab
