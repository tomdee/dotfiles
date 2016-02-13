# Path to your oh-my-zsh installation.
export ZSH=$HOME/dotfiles/oh-my-zsh

ZSH_THEME="robbyrussell"
plugins=(git)

# User configuration
export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/usr/local/go/bin:/usr/local/go/bin:$HOME/go/bin"
# export MANPATH="/usr/local/man:$MANPATH"

source $ZSH/oh-my-zsh.sh
bindkey '^R' history-incremental-search-backward

eval "$(thefuck --alias)"
