# Output timing info for slow commands
export REPORTTIME=5

# If we're 64bit, let everything know!
[[ "x86_64" == "$(uname -m)" ]] && export ARCHFLAGS="-arch x86_64 ${ARCHFLAGS}"

# make sure Homebrew s/bin comes first
PATH="$HOME/bin" # Home folder overrides everything
PATH="$PATH:$HOME/.cabal/bin" # Haskell binfiles
PATH="$PATH:/usr/local/bin:/usr/local/sbin" # Homebrew
PATH="$PATH:$HOME/pebble-dev/PebbleSDK-2.0.0/bin" # Pebble developer
PATH="$PATH:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin" # Normal $PATH bit
export PATH

# And the same for the manpath
MANPATH="/usr/local/share/man" # Homebrew
MANPATH="$MANPATH:/usr/share/man:/usr/local/share/man" # The usual
export MANPATH

## pager
export PAGER=less READNULLCMD=less

# Make ls and grep coloured
export CLICOLOR=true
export GREP_OPTIONS='--color=auto' GREP_COLOR='1;32'
export LSCOLORS="Gxfxcxdxbxegedabagacad"

# Textmate required
export LC_CTYPE=en_US.UTF-8 LANG=en_GB.UTF-8

# Editors
export EDITOR="mate -wl1"
export SVN_EDITOR="$EDITOR" HGEDITOR="$EDITOR" GIT_EDITOR="$EDITOR"

# Fuck you make
if [[ "FreeBSD" == "$(uname)" ]]; then
  MAKEFLAGS="-j$(sysctl hw.ncpu | awk '{ print $2 }')"
else
  MAKEFLAGS="-j$(sysctl machdep.cpu.thread_count | awk '{ print $2 }')"
fi
export MAKEFLAGS

# Coz I wanna be different, yeah?
export SUDO_PROMPT="Sudo Password: "

# If we have homebrew's curl-ca-bundle installed, use it
[[ -d /usr/local/opt/curl-ca-bundle ]] && export SSL_CERT_FILE="/usr/local/opt/curl-ca-bundle/share/ca-bundle.crt"
