#!/bin/bash

# dotfilesディレクトリのパス
DOTFILES_DIR=$HOME/dotfiles/home

# ホームディレクトリ
HOME_DIR=$HOME
# configディレクトリ
CONFIG_DIR=$HOME/.config

# シンボリックリンク作成のための関数
create_symlink() {
    local src="$1"
    local dest="$2"

    if [ -L "$dest" ]; then
        echo "$dest はすでに存在します. スキップしました."
        # read -rp "$dest はすでに存在します. 上書きしますか? (y/N): " response
        # if [ "$response" != "y" ] && [ "$response" != "Y" ]; then
            #echo "スキップしました: $dest"
            return
        # fi
        rm -rf "$dest"
    fi

    ln -s "$src" "$dest"
    echo
    echo "シンボリックリンクを作成しました: $src -> $dest"
}
echo "シンボリックリンクの作成を開始します."
echo

# home 配下のファイルとディレクトリのシンボリックリンクを作成
files_to_link=(
    ".latexmkrc"
    ".skhdrc"
    ".yabairc"
    ".zshrc"
    ".hammerspoon"
    "git/.gitconfig"
)

for file in "${files_to_link[@]}"; do
    create_symlink "$DOTFILES_DIR/$file" "$HOME_DIR/$(basename "$file")"
done

# .config 配下のファイルとディレクトリのシンボリックリンクを作成
config_dirs_to_link=(
    "alacritty"
    "mise"
    "nvim"
    "sheldon"
    "wezterm"
    "zellij"
    "starship.toml"
)

for dir in "${config_dirs_to_link[@]}"; do
    create_symlink "$DOTFILES_DIR/.config/$dir" "$CONFIG_DIR/$(basename "$dir")"
done

echo
echo "シンボリックリンクの作成が完了しました."
