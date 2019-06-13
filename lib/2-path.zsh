# Futz with my $PATH
# Lower case variable is an array of directories, booya

# Bring in the default PATH from /etc/paths /etc/paths.d
eval `/usr/libexec/path_helper -s`

path=(
  ./bin
  $HOME/bin
  $HOME/.cargo/bin # rustup
  $HOME/.cabal/bin
  /usr/local/sbin # Homebrew
  /Library/TeX/texbin # mactex
  $path # Default $PATH
)

# And the same for the $MANPATH
manpath=(
  $HOME/man
  /usr/local/share/man # Homebrew
  /usr/local/opt/erlang/lib/erlang/man # erlang
  /opt/X11/share/man
  $manpath # Other setup files
  $(/bin/cat /etc/manpaths) # Default manpaths - not loaded by default
)
# ZSH doesn't do this automatically, it does fill from $manpath though
export MANPATH
