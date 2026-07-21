# The base profile should include component modules that will be on all nodes
class profile::base {
  notify { 'This is the base profile. It should be included on all nodes.': }

  # Configure message of the day
  class { 'motd':
    content => "Welcome to ${facts['hostname']}\nManaged by Puppet\n",
  }
}
