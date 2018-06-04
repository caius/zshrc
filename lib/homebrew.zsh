# PATH additions are in ./2-path.zsh

# Don't search github for me, I can do that if I care
export HOMEBREW_NO_GITHUB_API=1

# Don't auto-update, I can do that by hand when I want to
export HOMEBREW_NO_AUTO_UPDATE=1

# Don't follow insecure redirects
export HOMEBREW_NO_INSECURE_REDIRECT=1

# Make sure casks have SHAs for downloaded packages when installing
export HOMEBREW_CASK_OPTS=--require-sha
