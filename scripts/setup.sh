#!/bin/bash
# dotfilesのシンボリックリンクを作成する
# source ~/dotfiles/link.sh

# homebrewがインストールされていない場合はインストール
if ! type brew &> /dev/null ; then
    echo "homebrewをinstallします..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
    echo "homebreのinstallはスキップされました."
fi

echo "Brewfileのパッケージをinstallします..."
brew bundle --global
echo\

echo "セットアップが完了しました"
echo "Next..."
echo "1. .envを追加し、環境変数を設定してください。"
echo "2. git/user.confを追加し、ユーザー情報を設定してください。"
echo "3. ターミナルを再起動してください。"
