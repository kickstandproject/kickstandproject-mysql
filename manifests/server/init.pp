class mysql::server::init {
  include mysql::server::install
  include mysql::server::config
  include mysql::server::service

  File {
    group => $mysql::params::group,
    mode  => $mysql::params::mode,
    owner => $mysql::params::owner,
  }
}

# vim:sw=2:ts=2:expandtab:textwidth=79
