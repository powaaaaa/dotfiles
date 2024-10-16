# zshの読み込み時間を計算するときはコメントアウトを外す
# zmodload zsh/zprof

eval "$(sheldon source)"

alias ls="ls -G"
export LSCOLORS=Gxfxcxdxbxegedabagacad

# 新しいコマンドを即認識させる
zstyle ":completion:*:commands" rehash 1

# ファイル名補完後にスペースを消さない
ZLE_REMOVE_SUFFIX_CHARS=$''

################ history ################
HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=1000
setopt share_history     # 同時に起動したzshで履歴を共有する
setopt hist_ignore_dups  # 同じコマンドを履歴に残さない
setopt hist_expire_dups_first # ヒストリが削られる場合、以前入力した同じものを先に削除する

bindkey '^[[A' history-search-backward
bindkey '^[[B' history-search-forward

############## tar ################
# tarballへ特殊ファイルを含めないようにする
tgz() {
  if [ $# -lt 2 ]; then
    echo "Usage: tgz DIST SOURCE"
  else
    xattr -rc "${@:2}" && \
    env COPYFILE_DISABLE=1 tar zcvf "$1" --exclude=".DS_Store" "${@:2}"
  fi
}

# volta
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"

# mise
export PATH="$HOME/.local/share/mise/shims:$PATH"

# dotnet
export DOTNET_ROOT="/usr/local/share/dotnet/dotnet"
export PATH=$PATH:$DOtNET_ROOT

# spaceship
source /opt/homebrew/opt/spaceship/spaceship.zsh

#########################################################
# homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"
