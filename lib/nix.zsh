nix_file=/Users/caius/.nix-profile/etc/profile.d/nix.sh
if [[ -e $nix_file ]]; then
  . $nix_file
  # https://nixos.org/wiki/Nix_on_OS_X
  export NIX_PATH=/Users/caius/sources/nixpkgs:nixpkgs=/Users/caius/sources/nixpkgs

  manpath=(
    $manpath
    /Users/caius/.nix-profile/share/man
  )
fi