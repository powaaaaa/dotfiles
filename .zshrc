zstyle ":completion:*:commands" rehash 1

# basic
alias ls="ls -G"
export LSCOLORS=Gxfxcxdxbxegedabagacad

PS1='%F{magenta}%n%f:%F{green}%~%f %# '

HISTFILE=~/.zsh_history
HISTSIZE=1000
SAVEHIST=1000
setopt hist_ignore_dups  # 同じコマンドを履歴に残さない
setopt share_history     # 同時に起動したzshで履歴を共有する

# history setup
HISTFILE=$HOME/.zhistory
SAVEHIST=1000
HISTSIZE=999
setopt share_history
setopt hist_expire_dups_first
setopt hist_ignore_dups
setopt hist_verify

# completion using arrow keys (based on history)
bindkey '^[[A' history-search-backward
bindkey '^[[B' history-search-forward

# DS_Store排除
tgz() {
  env COPYFILE_DISABLE=1 tar zcvf "$1" --exclude=".DS_Store" "${@:2}"
}

# expantion
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"
VOLTA_HOME=$HOME/.volta
export PATH=$VOLTA_HOME/bin:$PATH
eval "$(starship init zsh)"
export PATH="$HOME/.local/share/mise/shims:$PATH"
source "$(brew --prefix)/share/google-cloud-sdk/path.zsh.inc"
source "$(brew --prefix)/share/google-cloud-sdk/completion.zsh.inc"

# plugins
if type brew &>/dev/null; then
  FPATH=$(brew --prefix)/share/zsh-completions:$FPATH
  source /opt/homebrew/share/zsh-autosuggestions/zsh-autosuggestions.zsh
  autoload -Uz compinit && compinit
fi
