#!/usr/bin/env bash
file {'/etc/ssh/ssh_config':
  ensure  => present,
  content =>"

  Host *
    PasswordAuthentication no
    IdentityFile ~/.ssh/school
    SendEnv LANG LC_*
    HashKnownHosts yes
    GSSAPIAuthentication yes
  ",
}
