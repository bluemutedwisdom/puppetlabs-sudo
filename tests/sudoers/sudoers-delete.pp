sudoers { 'blah1':
  target => '/tmp/sudoers',
  ensure => absent,
  sudo_alias => 'Cmnd_Alias',
  items => ['blah4', 'blah2'],
  type => 'alias',
}
sudoers { 'blah2':
  target => '/tmp/sudoers',
  ensure => absent,
  sudo_alias => 'Host_Alias',
  items => ['blah2', 'blah3'],
  type => 'alias',
}
sudoers { 'blah3':
  target => '/tmp/sudoers',
  ensure => absent,
  users => 'dan',
  hosts => 'localhost',
  commands => ['/bin/true', '/bin/false'],
  type => 'user_spec',
}
