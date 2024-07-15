# practice using Puppet to make changes to our configuration file.
# file_line Ensures that a given line is contained within a file.
# 	The implementation matches the full line, including whitespace at the beginning and end.
# 	If the line is not contained in the given file, Puppet will append the line to the end of the file to ensure the desired state.
# 	Multiple resources may be declared to manage multiple lines in the same file.

file_line {'Declare identity file':
  path    => '/etc/ssh/ssh_config',
  line    => '     IdentityFile ~/.ssh/school',
  replace => true,
}
file_line { 'Turn off passwd auth':
  path    => '/etc/ssh/ssh_config',
  line    => '    PasswordAuthentication no',
  replace => true,
}
