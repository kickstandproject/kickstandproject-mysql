class mysql::server::install {
  package { $mysql::params::packagename:
    ensure       => present,
    responsefile => "/var/local/preseed/${mysql::params::packagename}.preseed",
    require      => File["/var/local/preseed/${mysql::params::packagename}.preseed"],
  }

  apt::function::preseed { "${mysql::params::packagename}.preseed":
    content => template("mysql/var/local/preseed/${mysql::params::packagename}.preseed.erb"),
  }
}

# vim:sw=2:ts=2:expandtab:textwidth=79
