# Change the OS configuration so that it is possible to login with the holberton user and open a file without any error message.

# Increase hard file limit for Holberton user.
exec { 'limit_config':
  command => "sed -i s/'nofile 5'/'nofile 100'/g /etc/security/limits.conf",
  path    => '/bin'
}

exec { 'limit_config_2':
  command => "sed -i s/'nofile 4'/'nofile 100'/g /etc/security/limits.conf",
  path    => '/bin'
}
