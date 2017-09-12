class minecraft (
  $game_mode = 1,
  $url = 'https://s3.amazonaws.com/Minecraft.Download/versions/1.12.1/minecraft_server.1.12.1.jar',
  $install_dir = '/opt/minecraft'
){
  include wget
  wget::fetch { "download minecraft":
    source      => $minecraft_url,
    destination => $install_dir',
    timeout     => 0,
    verbose     => false,
  }
  file { $install_dir:
    ensure => directory,
  }

  package {'java':
    ensure => present,
  }
  file {"${install_dir}/eula.txt":
    ensure => file,
    content => ‘eula=true’
  }
  file {'/etc/systemd/system/minecraft.service':
    ensure => file,
    source => 'puppet:///modules/minecraft/minecraft.service',
  }
  service { 'minecraft':
    ensure => running,
    enable => true,
  }
}
