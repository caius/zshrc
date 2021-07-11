### 1-main.zsh

# TODO: add my prompt

### 2-path.zsh
fish_add_path "./bin"
fish_add_path "$HOME/bin"
fish_add_path "$HOME/.cargo/bin" # rustup
fish_add_path "$HOME/.cabal/bin"
fish_add_path "/usr/local/sbin" # homebrew
fish_add_path "/Library/TeX/texbin" # mactex

### alias.zsh
alias ehco="echo"
alias ls="ls -G"

alias ssht='ssh -D 8080 -f -C -q -N'

alias etest='RAILS_ENV=test'
alias irb="pry"
alias be="bundle exec"

alias rc='mate (chezmoi source-path)'
alias sshc='mate ~/.ssh/config'
alias gitrc='mate ~/.gitconfig'

## Top Stuff
alias cpu='type -q htop >/dev/null 2>/dev/null && htop --sort-key PERCENT_CPU || top -o cpu'
alias ram='type -q htop >/dev/null 2>/dev/null && htop --sort-key RES || top -o rsize'

alias same='open .'

## My nifty stuff for copying/pasting dir paths
alias copypath='echo `pwd` | pbcopy'
alias cdpath='cd "`pbpaste`"'

## Textmate alias'
alias mate='mate -r'
alias m='mate -r'
alias m.='mate .'

# General ones
alias df='df -Hl'

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
alias ggit='git'
alias giit='git'
alias fit='git'
alias igt='git'
alias tit='git'
alias gits='git'
alias guit="git"
alias ig="git"
alias gitgit="git"
alias gity="git"
alias gtis="git"
alias gitr="git"
alias gigit="git"
alias gitt="git"

alias gitb='git b'
alias gitst='git st'
alias gtst='git st'

alias gitpush="git push"
alias gitup="git up"

alias gme='gem'
alias rkae='rake'
alias bundel="bundle"
alias vybdke="bundle"

alias js="/System/Library/Frameworks/JavaScriptCore.framework/Versions/A/Helpers/jsc"
alias airport="/System/Library/PrivateFrameworks/Apple80211.framework/Versions/Current/Resources/airport"

alias sqlite='sqlite3'

# Fuck yes, I am this lazy
alias v="vagrant"
alias tf="terraform"
alias md="macdown"
alias cz="chezmoi"

alias macos="prefix=(brew --prefix m-cli) \$prefix/bin/m"

# asdf.zsh
set asdf_dir (brew --prefix asdf)
if test -d $asdf_dir
  source $asdf_dir/asdf.fish
end

### chruby.zsh
# brew install chruby-fish
set chruby_dir (brew --prefix chruby-fish)
if test -d $chruby_dir
  # FIXME: this generates "Could not open a connection to your authentication agent" errors
  source $chruby_dir/share/chruby/chruby.fish
  source $chruby_dir/share/chruby/auto.fish

  chruby (cat ~/.ruby-version)
end

### exports.zsh
if test "x86_64" = "(/usr/bin/uname -m)"
  set -x ARCHFLAGS -arch\ x86_64 $ARCHFLAGS
end

set -x PAGER less
set -x READNULLCMD less

set -x CLICOLOR true
set -x GREP_OPTIONS '--color=auto -E'
set -x GREP_COLOR '1;32'
set -x LSCOLORS "Gxfxcxdxbxegedabagacad"

# Textmate required
set -x LC_CTYPE en_US.UTF-8
set -x LANG en_GB.UTF-8

# Editors
set -x EDITOR "mate -wl1"
set -x SVN_EDITOR $EDITOR
set -x HGEDITOR $EDITOR
set -x GIT_EDITOR $EDITOR
set -x MARKDOWN_EDITOR "macdown"

# Fuck you make, et al. Leave some CPU for the rest of us.
set parallel_cpus (math (/usr/sbin/sysctl -n machdep.cpu.thread_count) - 1)
set -x MAKEFLAGS -j$parallel_cpus
set -x BUNDLER_JOBS $parallel_cpus

# Coz I wanna be different, yeah?
set -x SUDO_PROMPT "Sudo Password: "

# Strictness of the HTML pleases
set -x STRICT_HTML true

# GPG refuses to be invoked by git without this
set -x GPG_TTY (tty)

# Fucking ruby 2.7
set -x RUBYOPT "-W:no-deprecated -W:no-experimental"

### go.zsh

set -x GOPATH $HOME/go
set -x GOROOT /usr/local/opt/go/libexec

fish_add_path "$GOPATH/bin"
fish_add_path "$GOROOT/bin"

### homebrew.zsh

# PATH additions are in ./2-path.zsh

# Don't search github for me, I can do that if I care
set -x HOMEBREW_NO_GITHUB_API 1

# Don't auto-update, I can do that by hand when I want to
set -x HOMEBREW_NO_AUTO_UPDATE 1

# Don't follow insecure redirects
set -x HOMEBREW_NO_INSECURE_REDIRECT 1

set mariadb_bin (brew --prefix mariadb@10.2)/bin
if test -e $mariadb_bin
  fish_add_path $mariadb_bin
end

### netlify.zsh
if test -d "$HOME/.netlify/helper"
  fish_add_path "$HOME/.netlify/helper/bin"
end

### python.zsh
set -x PIP_REQUIRE_VIRTUALENV true

### ruby.zsh

set -x RUBYOPT "-Itest"

# Magic?
set -x DEFER_GC 5

### rustup.zsh
set cargo_env "$HOME/.cargo/env"
if test -f $cargo_env
  source $cargo_env
end

### ssh.zsh
# Silently load SSH keys from the keychain if needed
ssh-add -l >/dev/null || ssh-add -A 2>/dev/null

### ulimit.zsh
if test (uname) = "Darwin"
  # Thanks macOS
  ulimit -n 32768
end

# No core, no more
ulimit -c 0

function ,
  if test (count $argv) -lt 1
    # No arguments, behave like `mate .`
    mate "$PWD"
  else
    mate $argv
  end
end

function bb
  echo ":'("
end

function ber
  bundle exec rake $argv
end

function ca
  cd "$HOME/projects"
end

function cap
  if test -f gems.deploy.rb
    BUNDLE_GEMFILE=gems.deploy.rb bundle exec cap $argv
  else if test -f Gemfile
    bundle exec cap $argv
  else
    cap $argv
  end
end

function chomp
  perl -pe 'chomp if eof'
end

function chruby-default
  chruby (cat $HOME/.ruby-version)
end

function cssh
  tmux-xpanes --ssh -ss $argv
end

function fa
  echo ":'("
end

function field
  awk "{ print \$$1 }"
end

function fish_prompt --description "Write out the prompt"
  set machine_name (hostname -s)

  set -l suffix "\$"
  if functions -q fish_is_root_user; and fish_is_root_user
  set suffix "#"
  end

  echo -n "➡️  $machine_name $suffix "
end

function fish_right_prompt
end

# function git_dirty
#   if test -n (git status -s --ignore-submodules=dirty 2> /dev/null)
#     echo ""
#   else
#     echo "*"
#   end
# end

# function git_prompt_info
# ref=$(git rev-parse --is-inside-work-tree 2> /dev/null) || return
# echo "%{$reset_color%}%{$fg[red]%}$(git current-branch)$(git_dirty)%{$reset_color%} | %{$reset_color%}%{$fg[yellow]%}$(git_stash_count)%{$reset_color%}"
# end

# function git_stash_count
#   echo $(git stash list 2> /dev/null | wc -l | sed -Ee 's/^[^0-9]*([0-9]+)[^0-9]*$/\1 stashed/' -e 's/0 stashed//') || return
# end

function ic
  cd "$HOME/Library/Mobile Documents/com~apple~CloudDocs"
end

function igrep
  grep -i $argv
end

function isoD
  date "+%Y-%m-%d"
end

function isoT
  date "+%H-%M"
end

function j
  osascript "$HOME/Library/Application Support/LaunchBar/Actions/Open Obsidian Daily Note.lbaction/Contents/Scripts/default.scpt"
end

function list_apps
  ps aux | grep Applications | grep -v grep | awk '{ print $11 }' | sed -Ee 's#^.+/(.+)\.app.+$#\1#'
end

# function mman
#   cd $HOME
#   set TM_MATE (which mate)
#   "$HOME/Library/Application Support/TextMate/Managed/Bundles/Man Pages.tmbundle/Support/mman" $argv
# end

function reboot
  echo "No."
end

function sessh
  set SSH_AUTH_SOCK $HOME/.sekey/ssh-agent.ssh
  ssh $argv
end

function sm
  cd $HOME/sm/src
end

function smake
  make -j1 $arg
end

function ssc
  cd $HOME/SSC/src
end

function static_webserver
  ruby -run -ehttpd . --bind-address 127.0.0.1 --port 8080
end

function syspip3
  set -u PIP_REQUIRE_VIRTUALENV
  pip3 $argv
end

function fish_greeting
end
