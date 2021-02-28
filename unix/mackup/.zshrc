# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

# Path to your oh-my-zsh installation.
export ZSH="$HOME/.oh-my-zsh"
export PATH="/usr/local/bin:/usr/local/sbin:$PATH"
export PATH=$PATH:~/.npm-global/bin
source "$HOME/google-cloud-sdk/path.zsh.inc" || true
source "$HOME/google-cloud-sdk/completion.zsh.inc" || true

ZSH_THEME="robbyrussell"
HIST_STAMPS="yyyy/mm/dd"

# Plugins
plugins=(
git
docker
docker-compose
zsh-syntax-highlighting
zsh-autosuggestions
)


source $ZSH/oh-my-zsh.sh
source ~/.bash_profile || true

alias dc='docker-compose'
