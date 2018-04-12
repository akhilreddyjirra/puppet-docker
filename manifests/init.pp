class dockerinstall {
  include apt

  $prerequisites = ['apt-transport-https', 'ca-certificates']
  package { $prerequisites: ensure => installed} ->

  apt::key { 'docker-ce':
     ensure    => present,
     id        => '9DC858229FC7DD38854AE2D88D81803C0EBFCD88',
     options   => 'https://download.docker.com/linux/ubuntu/gpg',
  } ->

  apt::source {'docker-ce':
     location  => 'https://download.docker.com/linux/ubuntu',
     release   => "${::lsbdistcodename} stable",
  } ->

  exec { 'apt-get-update':
     command   => '/usr/bin/apt-get update'
  } ->

  package {'docker-ce': ensure  => installed}
}
