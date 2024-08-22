# let's fix our stack so that we get to 0.
# Increse the request's limit.

exec { 'fix nginx':
  onlyif   => 'test -e /etc/default/nginx',
  command  => "sed -i s/'-n 15'/'-n 4096'/g /etc/default/nginx;  service nginx restart",
  provider => 'shell'
}
