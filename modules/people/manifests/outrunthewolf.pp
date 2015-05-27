class people::outrunthewolf {

  include projects::all
  include wget
  include zsh
  include chrome
  include skype
  include sublime_text_3
  include sublime_text_3::package_control
  include vagrant
  include virtualbox
  include minecraft
  include steam
  include vlc

  # Sublime text 
  sublime_text_3::package { 'Emmet':
     source => 'sergeche/emmet-sublime'
  }
  
  # Check AeroFS is available
  $my_home  = "/Users/${::luser}"
  $projects = "${my_home}/AeroFS"

  file { $projects:
    ensure => directory,
  }

  # Ensure the wonderful tig is here
  package { 'tig': 
    ensure => present
  }

}