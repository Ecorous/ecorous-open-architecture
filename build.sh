#!/usr/bin/env sh
if [ $# -ne 1 ]; then
    echo "Usage: $0 <root>"
    echo "NOTE: hardware config will be generated from root!"
    exit 1
fi
if [ "$1" = "/" ]; then
    nixos-generate-config --show-hardware-config > hardware-configuration.nix
    git add -f hardware-configuration.nix
    nixos-rebuild switch --flake ".#desktop" -j`nproc` --upgrade-all
    git rm --cached hardware-configuration.nix
    exit
else
    nixos-generate-config --show-hardware-config --root "${1}" > hardware-configuration.nix
    git add -f hardware-configuration.nix
    nixos-install --root "${1}" --flake ".#desktop" 
    git rm --cached hardware-configuration.nix
    cp . "${1}/architecture" -r
    exit
fi
