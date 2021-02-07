# ZSH History Substring Search plugin - https://github.com/zsh-users/zsh-history-substring-search

source "${HOME}/.zsh/vendor/zsh-history-substring-search/zsh-history-substring-search.zsh"

# Fuzzy search "curl http" matches "curl -vI http://caius.name/"
export HISTORY_SUBSTRING_SEARCH_FUZZY=1

bindkey '^R' history-substring-search-up
