# Use homebrew's folders rather than ~/.rbenv
export RBENV_ROOT=/usr/local/var/rbenv
# Default to this version of 1.9.3
export RBENV_VERSION=1.9.3-p327-perf

if which rbenv > /dev/null; then eval "$(rbenv init -)"; fi
