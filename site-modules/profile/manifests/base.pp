# The base profile should include component modules that will be on all nodes
class profile::base {
  notify { 'This is the base profile. It should be included on all nodes.': }

  # Configure message of the day with system information
  class { 'motd':
    ensure  => present,
    content => @(EOT),
      ========================================
      Welcome to ${facts['hostname']}
      OS: ${facts['os']['name']} ${facts['os']['release']['major']}
      IP Address: ${facts['networking']['ip']}
      Managed by Puppet Infrastructure
      ========================================
      | EOT
  }
}
