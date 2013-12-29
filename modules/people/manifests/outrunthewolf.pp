class people::outrunthewolf {

  include wget
  include zsh
  include chrome
  include skype
  include sublime_text_3
  include vagrant

  $my_home  = "/Users/${::luser}"
  $projects = "${my_home}/AeroFS/repos"

  file { $projects:
    ensure => directory,
  }

}