#!/bin/bash

DOTFILES_DIR=$HOME/dotfiles/home
echo "start make symbolic link..."

# ドットファイルのシンボリックリンクを作成
# dotfilesディレクトリ内の二つ下のディレクトリにあるファイルに対してループ
for f in $DOTFILES_DIR/.??*; do
  # ファイル名を取得
  file_name=$(basename $f)
  # ファイル名が.gitや.gitignoreの場合はスキップ
  if [ $file_name = ".git" ] || [ $file_name = ".gitignore" ]; then
    continue
  fi
  # ホームディレクトリにシンボリックリンクを作成
  ln -snfv $f $HOME/$file_name
done

echo "complete make symbolic link!"
