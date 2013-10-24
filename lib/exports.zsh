# make sure Homebrew s/bin comes first
PATH="$HOME/bin" # Home folder overrides everything
PATH="$PATH:$HOME/.cabal/bin" # Haskell binfiles
PATH="$PATH:/usr/local/bin:/usr/local/sbin" # Homebrew
PATH="$PATH:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin" # Normal $PATH bit
PATH="$PATH:/Users/caius/pebble-dev/arm-cs-tools/bin" # pebble SDK
export PATH

# And the same for the manpath
MANPATH="$HOME/man" # Home is where the critical is
MANPATH="$MANPATH:/usr/share/man:/usr/local/share/man" # The usual
MANPATH="$MANPATH:/usr/local/opt/erlang/lib/erlang/man" # Erlang installed with homebrew
export MANPATH

## pager
export PAGER=less

# Make ls and grep coloured
export CLICOLOR=true
export GREP_OPTIONS='--color=auto' GREP_COLOR='1;32'
export LSCOLORS="Gxfxcxdxbxegedabagacad"

# Textmate required
export LC_CTYPE=en_US.UTF-8
export LANG=en_GB.UTF-8

# Editors
export SVN_EDITOR="mate -wl1"
export HGEDITOR="mate -wl1"
export GIT_EDITOR="mate -wl1"
export EDITOR='mate'

# Fuck you python
export PYTHONPATH="/usr/local/lib/python2.7/site-packages"

# Fuck you make
if [[ "FreeBSD" == $(uname) ]]; then
  export MAKEFLAGS="-j$(sysctl hw.ncpu)"
else
  export MAKEFLAGS="-j$(sysctl machdep.cpu.thread_count | awk '{ print $2 }')"
fi

# Coz I wanna be different, yeah?
export SUDO_PROMPT="Sudo Password: "

# If we have homebrew's curl-ca-bundle installed, use it
[[ -d /usr/local/opt/curl-ca-bundle ]] && export SSL_CERT_FILE=/usr/local/opt/curl-ca-bundle/share/ca-bundle.crt
