cask_args appdir: "#{ENV["HOME"]}/Applications"

tap "homebrew/cask"
tap "caskroom/fonts"
tap "soveran/tools"
tap "nektos/tap"

brew "act" # nektos/tap/act
brew "ag"
brew "autoconf"
brew "automake"
brew "chen" # soveran/tools/chen
brew "chruby"
brew "coreutils"
brew "dnstop"
brew "dos2unix"
brew "exiftool"
brew "fzf"
brew "gdbm"
brew "gnu-sed"
brew "gnu-time"
brew "gnupg2"
brew "gnutls"
brew "ioping"
brew "jq"
brew "libffi"
brew "libiconv"
brew "libyaml"
brew "lynx"
brew "minicom"
brew "moreutils"
brew "mtr"
brew "netcat"
brew "openssl"
brew "pkg-config"
brew "proctools"
brew "psgrep"
brew "pstree"
brew "pwgen"
brew "rclone"
brew "readline"
brew "rtmpdump"
brew "ruby-install"
brew "tmux"
brew "tree"
brew "unrar"
brew "wdiff"
brew "wget"
brew "youtube-dl"

# Services
brew "redis"
brew "mariadb@10.2", restart_service: true, link: true
brew "postgresql"
brew "mosquitto"

# cask
cask "java" unless system("/usr/libexec/java_home --failfast")
cask "charles"
cask "coconutbattery"
cask "firefox"
cask "launchbar"
cask "limechat"
cask "macdown"
cask "the-unarchiver"
cask "virtualbox"

# fonts
cask "font-inconsolata"
cask "font-liberation-sans"
cask "font-open-sans"
cask "font-source-code-pro"
cask "font-source-sans-pro"