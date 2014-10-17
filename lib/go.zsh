export GOPATH=$HOME/go

if [[ -f /usr/local/bin/brew ]]; then
  export PATH="$(brew --prefix go)/libexec/bin:$PATH"
fi

export PATH="$GOPATH/bin:$PATH"
