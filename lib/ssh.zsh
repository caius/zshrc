if [[ "$(ssh-add -l)" == "The agent has no identities." ]]; then
  ssh-add -A 2> /dev/null
fi
