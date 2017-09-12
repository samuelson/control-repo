node default {
  file {'/root/README':
    ensure => file,
    content => $fqdn,
    owner => 'root',
  }
}

node 'master.puppet.vm' {
  include role::master_server
}

node 'minetest.puppet.vm' {
  include minecraft
}
