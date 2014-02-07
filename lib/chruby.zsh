if [[ -f /usr/local/opt/chruby/share/chruby/chruby.sh ]]; then

  # Load up chruby
  source /usr/local/opt/chruby/share/chruby/chruby.sh
  # Auto change rubies
  # source /usr/local/opt/chruby/share/chruby/auto.sh

  # Load default ruby for entire shell session
  test -f ~/.ruby-version && chruby $(< ~/.ruby-version)

fi
