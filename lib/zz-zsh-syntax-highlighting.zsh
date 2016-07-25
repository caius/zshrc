syntax="$(brew --prefix)/share/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh"
if [[ -e "$syntax" ]]; then
  source "$syntax"
fi
