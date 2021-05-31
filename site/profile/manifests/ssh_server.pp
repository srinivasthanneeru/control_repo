class profile::ssh_server {

  package {'openssh-server':
      ensure => present,
  }
  service {'sshd':
      ensure => 'running',
      enable => 'true',
  }
  ssh_authorized_key {'root@master.puppet.vm':
       ensure => present,
       user   => 'root',
       type   => 'ssh-rsa',
       key    =>  'AAAAB3NzaC1yc2EAAAADAQABAAABAQDAQtzVIaQkgQQl4mkzgrY+Y1gActVMF1MM7+ZQleY1KCILjGN3F/E58MtSPNUCzcPtONBM2HaroK+LrDJ6HNuGdtkd7tPvC+KUDzUCZ0QPq59lxTLKMWEKwuJXivb/KDLBJHjFg4qBVlG0mJB4UqV7VY1zTIoJ6fcNaYDxQ4hNiIx1TOnCgJBP/5Wu4z9/03Qc9xtzFmVfiq0+On9Td+kMzIJP29FhOrjF4icJnyT4Wtwd2Z+pZPnjKI8z+1b+eAadGvhT/mj/lZ93jnJ11/zNYTBSw3fnGybQutbCqFQXv9ytPTtt7+nnHyeft7U9WLVKDZQ70p368N6+pzZ8pDFL',
  }
}
