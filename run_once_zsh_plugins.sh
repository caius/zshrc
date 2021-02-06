#!/usr/bin/env bash

set -o errexit
set -o nounset
set -o pipefail
set -o noclobber

# increment to force apply: 2

readonly ZSH_ROOT="${HOME}/.zsh2"

mkdir -p "${ZSH_ROOT}/vendor"

pushd "${ZSH_ROOT}/vendor"

function handle_zsh_plugin() {
  local name="${1}"
  local repo="${2}"
  local sha="${3}"

  local install_path="${ZSH_ROOT}/vendor/${name}"

  echo "Handling ZSH Plugin ${name}"

  if [[ -d "${install_path}" ]]; then
    # Already installed, skip for now
    echo "${name} already present"
    # FIXME: this won't update them in future if needed
  else
    # Need to clone it
    git clone -c advice.detachedHead=false -q "${repo}" --single-branch "${install_path}"
    pushd "${install_path}"
    git checkout "${sha}"
    popd
    echo "${name} installed"
  fi
}

handle_zsh_plugin "z" "git@github.com:rupa/z" "9d5a3fe0407101e2443499e4b95bca33f7a9a9ca"

handle_zsh_plugin "zsh-autosuggestions" "git@github.com:zsh-users/zsh-autosuggestions" "v0.6.4"

handle_zsh_plugin "zsh-history-substring-search" "git@github.com:zsh-users/zsh-history-substring-search" "47a7d416c652a109f6e8856081abc042b50125f4"

handle_zsh_plugin "zsh-syntax-highlighting" "git@github.com:zsh-users/zsh-syntax-highlighting" "e900ad8bad53501689afcb050456400d7a8466e5"
