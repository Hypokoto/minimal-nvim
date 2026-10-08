#!/usr/bin/env bash
set -euo pipefail

DOTFILES_DIR="$(cd "$(dirname "${BASH_SOURCE[0]}")" && pwd)"

if [[ ! -f "$HOME/.config/nvim/lua/nvconfig.lua" && ! -f "$HOME/.config/nvim/init.lua" ]]; then
	if [[ -e "$HOME/.config/nvim" ]]; then
		mv "$HOME/.config/nvim" "$HOME/.config/nvim.bak.$(date +%s%N)"
	fi
	NVCHAD_PIN="e3572e1f5e1c297212c3deeb17b7863139ce663e"
	git clone https://github.com/NvChad/starter "$HOME/.config/nvim" && \
		git -C "$HOME/.config/nvim" checkout "$NVCHAD_PIN" || true
fi

mkdir -p "$HOME/.config/nvim/lua/configs" "$HOME/.config/nvim/lua/plugins" "$HOME/.config/nvim/lua/themes" "$HOME/.config/nvim/ftplugin"

cp -f "$DOTFILES_DIR/nvim/lua/chadrc.lua" "$HOME/.config/nvim/lua/chadrc.lua" 2>/dev/null || true
cp -f "$DOTFILES_DIR/nvim/lua/autocmds.lua" "$HOME/.config/nvim/lua/autocmds.lua" 2>/dev/null || true
cp -f "$DOTFILES_DIR/nvim/lua/plugins/init.lua" "$HOME/.config/nvim/lua/plugins/init.lua" 2>/dev/null || true
cp -f "$DOTFILES_DIR/nvim/lua/mappings.lua" "$HOME/.config/nvim/lua/mappings.lua" 2>/dev/null || true
cp -f "$DOTFILES_DIR/nvim/lua/configs/"*.lua "$HOME/.config/nvim/lua/configs/" 2>/dev/null || true
cp -f "$DOTFILES_DIR/nvim/lua/themes/"*.lua "$HOME/.config/nvim/lua/themes/" 2>/dev/null || true
cp -f "$DOTFILES_DIR/nvim/ftplugin/"*.lua "$HOME/.config/nvim/ftplugin/" 2>/dev/null || true

echo "NvChad overlay applied successfully."
