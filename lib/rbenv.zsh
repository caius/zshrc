if which rbenv > /dev/null; then
  # Use homebrew's folders rather than ~/.rbenv
  export RBENV_ROOT=/usr/local/var/rbenv

  eval "$(rbenv init -)"
fi
