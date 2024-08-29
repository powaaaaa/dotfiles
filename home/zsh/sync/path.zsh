# homebrew
#  typeset -Ug : deal with path as set of PATH
#  N-/         : add path if not exist
typeset -gU path PATH
path=(
  /opt/homebrew/bin(N-/)
  /opt/homebrew/sbin(N-/)
  /usr/bin
  /usr/sbin
  /bin
  /sbin
  /usr/local/bin(N-/)
  /usr/local/sbin(N-/)
  /Library/Apple/usr/bin
)

# volta
export VOLTA_HOME="$HOME/.volta"
export PATH="$VOLTA_HOME/bin:$PATH"

# mise
export PATH="$HOME/.local/share/mise/shims:$PATH"

# gcloud
source "$(brew --prefix)/share/google-cloud-sdk/path.zsh.inc"
source "$(brew --prefix)/share/google-cloud-sdk/completion.zsh.inc"

# dotnet
export DOTNET_ROOT="/usr/local/share/dotnet/dotnet"
export PATH=$PATH:$DOtNET_ROOT

#########################################################
# homebrew
eval "$(/opt/homebrew/bin/brew shellenv)"

# starship
eval "$(starship init zsh)"

# sheldon
eval "$(sheldon source)"
