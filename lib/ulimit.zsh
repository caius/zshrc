if [[ "$(uname)" == "Darwin" ]]; then

  # For this to work you'll want to put the following into /etc/sysctl.conf:
  #
  #   # Bump the open files limit
  #   kern.maxfiles=262144
  #   kern.maxfilesperproc=32768
  #
  # And then either reboot or run
  #
  #   cat /etc/sysctl.conf | grep -v '#' | xargs -L1 sudo sysctl
  #

  # Thanks OS X
  ulimit -n 32768
fi

# No core, no more
ulimit -c 0
