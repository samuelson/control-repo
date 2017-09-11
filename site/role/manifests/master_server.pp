class role::master_server {
  include profile::base
  include dockeragent
  dockeragent::node { 'web.puppet.vm': }
  dockeragent::node { 'db.puppet.vm': }
}
