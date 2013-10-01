# make sure Homebrew s/bin comes first
PATH="$HOME/bin" # Home folder overrides everything
PATH="$PATH:$HOME/.cabal/bin" # Haskell binfiles
PATH="$PATH:/usr/local/bin:/usr/local/sbin" # Homebrew
PATH="$PATH:/usr/local/share/python" # Homebrew python scripts
PATH="$PATH:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin" # Normal $PATH bit
PATH="$PATH:/Users/caius/pebble-dev/arm-cs-tools/bin" # pebble SDK
export PATH

# And the same for the manpath
MANPATH="$HOME/man" # Home is where the critical is
MANPATH="$MANPATH::/usr/share/man:/usr/local/share/man:/usr/X11/man" # The usual
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
export MAKEFLAGS="-j$(sysctl machdep.cpu.thread_count | awk '{ print $2 }')"

# Fuck you JAVA
export JAVA_HOME="$(/usr/libexec/java_home -v 1.6)"

# Coz I wanna be different, yeah?
export SUDO_PROMPT="Sudo Password: "
