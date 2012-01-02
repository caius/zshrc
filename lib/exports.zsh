# make sure Homebrew s/bin comes first
PATH="$HOME/bin:/usr/local/Cellar/jruby/1.5.6/jruby/bin:/Users/caius/.cabal/bin:/usr/local/share/npm/bin"
PATH="$PATH:/usr/local/bin:/usr/local/sbin:/usr/bin:/bin:/usr/sbin:/sbin:/usr/X11/bin"
#PATH="$PATH:/opt/PalmSDK/Current/bin:/opt/PalmPDK/bin:/opt/nova/bin"
PATH="$PATH:/usr/texbin"
export PATH

# And the same for the manpath
export MANPATH="/Users/caius/man:/usr/share/man:/usr/local/share/man:/usr/X11/man"

## pager
export PAGER=less

# Make ls and grep coloured
export CLICOLOR=true
export GREP_OPTIONS='--color=auto' GREP_COLOR='1;32'
export LSCOLORS="Gxfxcxdxbxegedabagacad"

# Textmate required
export LC_CTYPE=en_US.UTF-8
export LANG=en_GB.UTF-8

# Fuck you python
export PYTHONPATH="/usr/local/lib/python2.6/site-packages"

# Fuck you make
export MAKEFLAGS='-j4'

# Twitter performance tweaks for REE
# export RUBY_HEAP_MIN_SLOTS=500000
# export RUBY_HEAP_SLOTS_INCREMENT=250000
# export RUBY_HEAP_SLOTS_GROWTH_FACTOR=1
# export RUBY_GC_MALLOC_LIMIT=50000000

# From http://grease-your-suite.heroku.com/#87
export RUBY_HEAP_MIN_SLOTS=1000000
export RUBY_HEAP_SLOTS_INCREMENT=1000000
export RUBY_HEAP_SLOTS_GROWTH_FACTOR=1
export RUBY_GC_MALLOC_LIMIT=1000000000
export RUBY_HEAP_FREE_MIN=500000

# Coz I wanna be different, yeah?
export SUDO_PROMPT="Sudo Password: "

# jumping on that there node bandwagon
export NODE_PATH="/usr/local/lib/node"
