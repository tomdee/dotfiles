# Path to your oh-my-zsh installation.
export ZSH=$HOME/dotfiles/oh-my-zsh

ZSH_THEME="robbyrussell"
plugins=(git vi-mode kubectl tmux golang thefuck)

# User configuration
export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/usr/local/go/bin:/usr/local/go/bin:$HOME/go/bin"
# export MANPATH="/usr/local/man:$MANPATH"

# Only wait 0.1s after pressing escape
export KEYTIMEOUT=1

# tmux all the things
ZSH_TMUX_AUTOSTART=true

source $ZSH/oh-my-zsh.sh
