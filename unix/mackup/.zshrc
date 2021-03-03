# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

export ZSH="$HOME/.oh-my-zsh"
export PATH="/usr/local/bin:/usr/local/sbin:$PATH"
export PATH=$PATH:~/.npm-global/bin
GCP_COMPLETION="$HOME/google-cloud-sdk/completion.zsh.inc"
GCP_PATH="$HOME/google-cloud-sdk/path.zsh.inc"
BASH_PRF="~/.bash_profile"
if [ -e $GCP_COMPLETION ]; then
  source $GCP_COMPLETION
fi
if [ -e $GCP_PATH ]; then
  source $GCP_PATH
fi
if [ -e $BASH_PRF ]; then
  source $BASH_PRF
fi


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

alias dc='docker-compose'
