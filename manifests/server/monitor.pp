class mysql::server::monitor {
  monitor::function::process { $name:
    process => $mysql::params::processname,
  }
}

# vim:sw=2:ts=2:expandtab:textwidth=79
