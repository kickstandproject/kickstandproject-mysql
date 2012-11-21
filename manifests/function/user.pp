define mysql::function::user(
  $password,
  $host = 'localhost'
) {
  $sql = "mysql --defaults-file=/root/.my.cnf -uroot -e \"CREATE USER '${name}'@'${host}' IDENTIFIED BY '${password}';\""

  exec { $sql:
    require => Class['mysql::server::service'],
    onlyif  => "mysql --defaults-file=/root/.my.cnf -uroot -NBe \"SELECT '1' FROM mysql.user WHERE CONCAT(user, '@', host) = '${name}'@${host}';\""
  }
}

# vim:sw=2:ts=2:expandtab
