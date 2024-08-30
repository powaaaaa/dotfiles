#!/bin/bash

DOTFILES_DIR=$HOME/dotfiles/home
echo "シンボリックを作成します..."

for dotfile in "${DOTFILES_DIR}"/.??* ; do
    [[ "$dotfile" == "${DOTFILES_DIR}/.git" ]] && continue
    [[ "$dotfile" == "${DOTFILES_DIR}/.github" ]] && continue
    [[ "$dotfile" == "${DOTFILES_DIR}/.DS_Store" ]] && continue

    ln -fnsv "$dotfile" "$HOME"
done

echo "シンボリックリンクを作成しました."
