homebrew_asdf_dir="/opt/homebrew/opt/asdf"
if [[ -d $homebrew_asdf_dir ]]; then
  # Load up asdf
  source $homebrew_asdf_dir/libexec/asdf.sh
fi
