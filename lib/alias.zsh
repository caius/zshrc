alias ehco="echo"
alias ea-ssh="ssh"

alias ls="ls -G"

alias ..='cd ..'
alias cd..='cd ..'
alias cd...='cd ../..'
alias cd....='cd ../../..'
alias cd.....='cd ../../../..'
alias cd/='cd /'
alias d='dirs -v'

# SSH stuff
alias ssht='ssh -D 8080 -f -C -q -N'

## Rails stuff
alias edev='RAILS_ENV=development'
alias etest='RAILS_ENV=test'
alias ecuke='RAILS_ENV=cucumber'
alias estaging='RAILS_ENV=staging'
alias eproduction='RAILS_ENV=production'
alias eprod="eproduction"

# For running test unit *sigh*
# Depends on my rtest function
alias rt="rtest"

alias be="bundle exec"
alias ber="nocorrect bundle exec rake"

alias rcap=$(whence -p cap)

alias gvg='grep -v grep'

alias rc='mate ~/.zsh'
alias so='source ~/.zshrc && echo "Sourced ~/.zshrc"'
alias sshc='mate -w ~/.ssh/config'
alias irbrc='mate -w ~/.irbrc'
alias gitrc='mate -w ~/.gitconfig'

alias nt="terminal_clone_tab"

alias cur='clear && pwd && ls'

## Top Stuff
alias cpu='(which htop > /dev/null && htop --sort-key PERCENT_CPU) || top -o cpu'
alias ram='(which htop > /dev/null && htop --sort-key RES) || top -o rsize'

# Sources
alias fa="cd ~/freeagent/src"

alias same='open .'

## My nifty stuff for copying/pasting dir paths
alias copypath='echo `pwd` | pbcopy'
alias cdpath='cd "`pbpaste`"'

## Textmate alias'
alias mate='\mate -r'
alias m='mate -r'
# alias ,='mate -r'
alias matew='mate -rw'
alias mw='mate -rw'
alias m.='mate .'

# Open all .xcodeproj files in the current folder
alias xcode='open *.xcodeproj'

# General ones
alias df='df -Hl'
alias mktar='tar -cvf'
alias mkbz2='tar -cvjf'
alias mkgz='tar -cvzf'
alias untar='tar -xvf'
alias unbz2='tar -xvjf'
alias ungz='tar -xvzf'
alias mv='mv -i'
alias cp='cp -i'

alias dnsflush='dscacheutil -flushcache'

# Git alias'
alias bitx='gitx'
alias ghit='git'
alias bit='git'
alias gib='git'
alias got='git'
alias gut='git'
alias gti='git'
alias gtu='git'
alias gto='git'
alias giot='git'
alias hit='git'
alias tgit='git'
alias tgi='git'
alias gt='git'
alias gi='git'
alias it='git'
alias g='git'
alias t='git'
alias ggit='git'
alias fit='git'
alias igt='git'
alias ti='git'
alias tit='git'
alias gits='git'
alias guit="git"
alias ig="git"
alias gitgit="git"

alias gitst='git st'
alias gtst='git st'

alias gme='gem'
alias rkae='rake'
alias bundel="bundle"

alias js="/System/Library/Frameworks/JavaScriptCore.framework/Versions/Current/Resources/jsc"

alias sqlite='sqlite3'
alias crontab="EDITOR=nano crontab"

# Override ZSH's built ins
alias time="$(whence -p time)"

# ln -s /System/Library/Frameworks/JavascriptCore.framework/Versions/A/Resources/jsc ~/bin/
alias javascript="jsc"

# From http://www.leancrew.com/all-this/2013/02/getting-rid-of-open-with-duplicates/
alias fixopenwith='/System/Library/Frameworks/CoreServices.framework/Frameworks/LaunchServices.framework/Support/lsregister -kill -r -domain local -domain system -domain user'

alias csshx="csshX"

# Prettify JSON/XML
alias pretty_json="python -m json.tool"
alias pretty_xml="xmllint --format -"

# brightbox-cli alias'
alias bb-accounts="brightbox-accounts"
alias bb-firewall-policies="brightbox-firewall-policies"
alias bb-fwp="brightbox-firewall-policies"
alias bb-images="brightbox-images"
alias bb-imgs="brightbox-images"
alias bb-types="brightbox-types"
alias bb-cloudips="brightbox-cloudips"
alias bb-cips="brightbox-cloudips"
alias bb-firewall-rules="brightbox-firewall-rules"
alias bb-fwr="brightbox-firewall-rules"
alias bb-lbs="brightbox-lbs"
alias bb-users="brightbox-users"
alias bb-config="brightbox-config"
alias bb-groups="brightbox-groups"
alias bb-grps="brightbox-groups"
alias bb-servers="brightbox-servers"
alias bb-zones="brightbox-zones"

# Habit
alias rvm="rbenv"

# Reload my shell!
alias reload="exec zsh -l"
