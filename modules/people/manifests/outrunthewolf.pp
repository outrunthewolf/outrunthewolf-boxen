class people::outrunthewolf {

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

  sublime_text_3::package { 'Emmet':
     source => 'sergeche/emmet-sublime'
  }
  
  $my_home  = "/Users/${::luser}"
  $projects = "${my_home}/AeroFS"

  file { $projects:
    ensure => directory,
  }

}