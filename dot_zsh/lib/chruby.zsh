chruby_dir="/opt/homebrew/opt/chruby/share/chruby"
if [[ -d $chruby_dir ]]; then
  # Load up chruby
  source $chruby_dir/chruby.sh
  source $chruby_dir/auto.sh

  # Use default ruby everywhere
  chruby $(< $HOME/.ruby-version)
fi
