class profile::ssh_server {
  package {'openssh-server':
    ensure => present,
  }
  service { 'sshd':
    ensure => 'running',
    enable => 'true',
  }
  ssh_authorized_key { 'root@master.puppet.vm':
    ensure => present,
    user   => 'root',
    type   => 'ssh-rsa',
    key    => 'ssh-rsa AAAAB3NzaC1yc2EAAAADAQABAAABAQC7mCaAq0m4aPTslCtHqza38Omek4Qb9tG6MKr/CZxolKxFv3DoJ2cCHHWdpKPImBvJI9ZM810/rY93UCipUu/6JfK8FHI7NVSIGgkUF0Ax46cEjdiq7G+oXdbK2dhv7Kgbf/gVUuzgu0EODzDFTRuzR2xfEK05Gfe7eBJSIydd35Gs7/aSrG/fa2g2gxvNFZ810jOEsNzGjgAaTMhigesLMTZfZboxfG28fwTghRHQHbN+sp8ZJUolfR7S62P5fo2JfP/S3Va39riLAyU2rHmGXlgUSnthrSgLP3R5AUrtTCCy6f7MhfOdkkx7Xk3JwH9pOrOs8/tidW/zV0FGfT2T root@master.puppet.vm'
  }  
}
