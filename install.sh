#!/usr/bin/env bash
set -euo pipefail

PKGS=("neovim" "git" "ripgrep" "fd" "gcc")

if command -v pacman >/dev/null 2>&1; then
    sudo pacman -Syu --needed --noconfirm "${PKGS[@]}"
fi

bash "$(dirname "${BASH_SOURCE[0]}")/deploy.sh"
