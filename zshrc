# Path to your oh-my-zsh installation.
export ZSH=$HOME/dotfiles/oh-my-zsh

ZSH_THEME="robbyrussell"
plugins=(git kubectl tmux golang)

# User configuration
export PATH="/snap/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games:/usr/local/go/bin:/usr/local/go/bin:$HOME/go/bin:/home/tom/.gem/ruby/2.4.0/bin"
# export MANPATH="/usr/local/man:$MANPATH"

# Only wait 0.1s after pressing escape
#export KEYTIMEOUT=1

# tmux all the things
#ZSH_TMUX_AUTOSTART=true

# Add an "alert" alias for long running commands.  Use like so:
# sleep 10; alert
alias alert='notify-send --urgency=low -i "$([ $? = 0 ] && echo terminal || echo error)" "$(history|tail -n1|sed -e '\''s/^\s*[0-9]\+\s*//;s/[;&|]\s*alert$//'\'')"'

# update cdpath
export CDPATH=${CDPATH}:$GOPATH/src/github.com:$GOPATH/src/golang.org:$GOPATH/src

export CGO_ENABLED=0

alias git=hub
fpath=(~/.zsh/completions $fpath) 
autoload -U compinit && compinit

source $ZSH/oh-my-zsh.sh

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/home/tom/google-cloud-sdk/path.zsh.inc' ]; then source '/home/tom/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/home/tom/google-cloud-sdk/completion.zsh.inc' ]; then source '/home/tom/google-cloud-sdk/completion.zsh.inc'; fi
