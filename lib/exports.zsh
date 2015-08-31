# Output timing info for slow commands
export REPORTTIME=5

# If we're 64bit, let everything know!
[[ "x86_64" == "$(/usr/bin/uname -m)" ]] && export ARCHFLAGS="-arch x86_64 ${ARCHFLAGS}"

# Futz with my $PATH
# Lower case variable is an array of directories, booya

# Bring in the default PATH from /etc/paths /etc/paths.d
eval `/usr/libexec/path_helper -s`

path=(
  $HOME/bin
  $HOME/.cabal/bin
  /usr/local/sbin # Homebrew
  $path # Default $PATH
)

# And the same for the $MANPATH
manpath=(
  $HOME/man
  /usr/local/share/man # Homebrew
  /opt/X11/share/man
  $manpath # Other setup files
  $(/bin/cat /etc/manpaths) # Default manpaths - not loaded by default
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

# Fuck you make, et al. Leave some CPU for the rest of us.
parallel_cpus=$(( $(/usr/sbin/sysctl -n machdep.cpu.thread_count) - 1 ))
export MAKEFLAGS="-j${parallel_cpus}" BUNDLER_JOBS="${parallel_cpus}" PARALLEL_TEST_PROCESSORS="${parallel_cpus}"

# Coz I wanna be different, yeah?
export SUDO_PROMPT="Sudo Password: "

# Strictness of the HTML pleases
export STRICT_HTML=true
