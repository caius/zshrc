# This is named 1-main so it gets loaded first

# Setup stuff to be loaded!
autoload -U colors && colors
autoload -U promptinit && promptinit
autoload -U compinit -u && compinit -u
autoload -U url-quote-magic
autoload zmv

# Setup my prompt
setopt prompt_subst
prompt caius

# Options
setopt auto_cd
setopt multios
setopt cdablevarS
setopt BRACE_CCL # echo {a-c} # => [a,b,c]

# Completion
setopt noautomenu
setopt complete_in_word
setopt always_to_end

unsetopt flowcontrol

WORDCHARS=''

zmodload -i zsh/complist

# Case insensitive matching
zstyle ':completion:*' matcher-list 'm:{a-zA-Z}={A-Za-z}' 'r:|[._-]=* r:|=*' 'l:|=* r:|=*'
zstyle ':completion:*' list-colors ''

unsetopt MENU_COMPLETE

bindkey -M menuselect '^o' accept-and-infer-next-history

zstyle ':completion:*:*:*:*:*' menu yes select
# zstyle ':completion:*:*:*:*:processes' force-list always

zstyle ':completion:*:*:kill:*:processes' list-colors '=(#b) #([0-9]#) ([0-9a-z-]#)*=01;34=0=01'
zstyle ':completion:*:*:*:*:processes' command "ps -u `whoami` -o pid,user,comm -w -w"

# Changing/making/removing directory
setopt auto_pushd
setopt pushd_ignore_dups

## smart urls
zle -N self-insert url-quote-magic

## jobs
setopt long_list_jobs
