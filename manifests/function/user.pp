define mysql::function::user(
  $password,
  $host = 'localhost'
) {
  exec { "create-user-${name}@${host}":
    command => "mysql --defaults-file=/root/.my.cnf -uroot -e \"CREATE USER '${name}'@'${host}' IDENTIFIED BY '${password}';\"",
    require => Class['mysql::server::service'],
    unless  => "mysql -u${name} -p${password}",
  }
}

# vim:sw=2:ts=2:expandtab
