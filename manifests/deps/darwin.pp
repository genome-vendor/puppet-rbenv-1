# == Class: rbenv::deps::darwin
#
# This module manages rbenv dependencies for Darwin $::osfamily.
#
class rbenv::deps::darwin {
  ensure_packages(['git'], { provider => 'brew' })
}
