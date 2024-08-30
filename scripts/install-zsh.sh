#!/bin/bash
echo "zshのインストールを開始します."
echo

echo "APTの更新を開始します..."
sudo apt update
echo

echo "zshのインストールを開始します..."
sudo apt install zsh -y
echo

echo "zshのバージョンを確認します..."
zsh --version
echo

echo "zshの設定ファイルを作成します..."
touch $HOME/.zshrc

# .zshrcファイルの存在確認
if [ -f $HOME/.zshrc ]; then
    echo ".zshrcファイルが作成されました."
else
    echo -e "\e[31m .zshrcファイルの作成に失敗しました. \e[m"
fi
echo

echo "デフォルトのシェルをzshに変更します..."
chsh -s "$(which zsh)"

echo
echo "新しいターミナルを立ち上げて、シェルがzshに変更されているか確認してください."
