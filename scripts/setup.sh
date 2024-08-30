#!/bin/bash
echo "setupを開始します."
echo

# dotfilesのシンボリックリンクを作成する
# source $HOME/dotfiles/scripts/link.sh

# homebrewがインストールされていない場合はインストール
if ! type brew &> /dev/null ; then
    echo "homebrewをinstallします..."
    /bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/HEAD/install.sh)"
else
    echo "homebreのinstallはスキップされました."
fi
echo

echo "Brewfile記載のパッケージをinstallします..."
BREWFILE_PATH="$HOME/dotfiles/home/Brewfile"
brew bundle --file="$BREWFILE_PATH"
echo\

echo "セットアップが完了しました."
echo "------------------------------------"
echo "Next:"
echo "  gitconfigのuserを設定してください."
echo "  terminalを再起動してください."
