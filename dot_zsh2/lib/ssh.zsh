# Silently load SSH keys from the keychain if needed
ssh-add -l > /dev/null || ssh-add -A 2> /dev/null
