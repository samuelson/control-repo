class webapp {
  include nginx
  include mysql::client
  class { 'mysql::server':
    root_password => 'password'
  }
}
