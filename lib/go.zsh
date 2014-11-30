export GOPATH=$HOME/go

brew="/usr/local/bin/brew"
if [[ -f $brew ]]; then
  export PATH="$($brew --prefix go)/libexec/bin:$PATH"
fi

export PATH="$GOPATH/bin:$PATH"
