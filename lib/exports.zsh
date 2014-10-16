# Output timing info for slow commands
export REPORTTIME=5

# If we're 64bit, let everything know!
[[ "x86_64" == "$(uname -m)" ]] && export ARCHFLAGS="-arch x86_64 ${ARCHFLAGS}"

# Futz with my $PATH
# Lower case variable is an array of directories, booya
path=(
  $HOME/bin
  $HOME/.cabal/bin
  /usr/local/bin /usr/local/sbin # Homebrew
  $path # Default $PATH
)

# And the same for the $MANPATH
manpath=(
  $HOME/man
  /usr/local/share/man # Homebrew
  $(cat /etc/manpaths) # Default manpaths - not loaded by default
)
# ZSH doesn't do this automatically, it does fill from $manpath though
export MANPATH

## pager
export PAGER=less READNULLCMD=less

# Make ls and grep coloured
export CLICOLOR=true
export GREP_OPTIONS='--color=auto -E' GREP_COLOR='1;32'
export LSCOLORS="Gxfxcxdxbxegedabagacad"

# Textmate required
export LC_CTYPE=en_US.UTF-8 LANG=en_GB.UTF-8

# Editors
export EDITOR="mate -wl1"
export SVN_EDITOR="$EDITOR" HGEDITOR="$EDITOR" GIT_EDITOR="$EDITOR"

# Fuck you make
cpus="$(sysctl -n machdep.cpu.thread_count)"
export MAKEFLAGS="-j${cpus}" BUNDLER_JOBS="${cpus}"

# Coz I wanna be different, yeah?
export SUDO_PROMPT="Sudo Password: "

# If we have homebrew's curl-ca-bundle installed, use it
[[ -d /usr/local/opt/curl-ca-bundle ]] && export SSL_CERT_FILE="/usr/local/opt/curl-ca-bundle/share/ca-bundle.crt"
