class mysql::server {
  include mysql::params
  include mysql::server::init
}

# vim:sw=2:ts=2:expandtab:textwidth=79
