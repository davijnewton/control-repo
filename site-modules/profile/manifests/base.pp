# The base profile should include component modules that will be on all nodes
class profile::base {
  include myapp

  notify { 'This is the base profile. It should be included on all nodes.': }
}
