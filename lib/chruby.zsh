chruby_sh="/usr/local/opt/chruby/share/chruby/chruby.sh"
if [[ -f $chruby_sh ]]; then
  # Load up chruby
  source $chruby_sh

  # Use default ruby everywhere
  chruby $(< $HOME/.zsh/dotfiles/ruby-version)
fi
