# == Class: rbenv::params
#
# This class manages per-osfamily rbenv settings
#
class rbenv::params {
  case $::osfamily {
    'Debian': {
      $group = 'adm'
    }
    'RedHat': {
      $group = 'wheel'
    }
    'Suse': {
      $group = 'users'
    }
    'Darwin': {
      $group = 'wheel'
    }
    default: {
      fail('The rbenv module currently only suports Debian, RedHat, Suse, and Darwin')
    }
  }
}
