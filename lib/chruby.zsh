if [[ -f $HOME/.nix-profile/share/chruby/chruby.sh ]]; then
  # Load up chruby
  source $HOME/.nix-profile/share/chruby/chruby.sh

  # Use default ruby everywhere
  chruby $(< $HOME/.zsh/dotfiles/ruby-version)

elif [[ -f /usr/local/opt/chruby/share/chruby/chruby.sh ]]; then
  # Load up chruby
  source /usr/local/opt/chruby/share/chruby/chruby.sh

  # Use default ruby everywhere
  chruby $(< $HOME/.zsh/dotfiles/ruby-version)
fi
