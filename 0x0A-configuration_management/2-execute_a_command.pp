# Define an exec resource to kill the process named "killmenow"
exec { 'killmenow':
  command     => 'pkill -f killmenow',
  refreshonly => true, # Only run the command when notified
  onlyif      => 'pgrep killmenow', # Check if the process is running before attempting to kill
  path    => ['/usr/bin', '/usr/sbin']
}
