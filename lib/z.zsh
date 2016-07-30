zfile="$(brew --prefix z)/etc/profile.d/z.sh"
if [[ -e "$zfile" ]]; then
  . "$zfile"
fi
