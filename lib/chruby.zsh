if [[ -f /usr/local/opt/chruby/share/chruby/chruby.sh ]]; then

  # Load up chruby
  source /usr/local/opt/chruby/share/chruby/chruby.sh

  # Use default ruby everywhere
  chruby $(< $HOME/.zsh/dotfiles/ruby-version)

fi
