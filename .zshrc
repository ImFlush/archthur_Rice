# Created by newuser for 5.6.2
#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

#Add .scripts to path
#export PATH=$PATH:$HOME/.scripts
export LS_COLORS="$LS_COLORS:ow=1;34:tw=1;34:"

# Alias
alias h='cd ~'
alias cdwm='cd ~/repos/dwm'
alias vrc='vim ~/.vimrc'
alias vzrc='vim ~/.zshrc'
alias la='ls -a'
alias ls='ls --color=auto'
alias v='vim'
alias db-start='sudo systemctl start postgresql'
alias db-connect='psql -h localhost -d versand25'
alias db-stop='sudo systemctl stop postgresql'
alias config='git --git-dir=$HOME/repos/archthur_rice.git/ --work-tree=$HOME'
alias dwm-clean='cd ~/repos/dwm && make clean && rm -f config.h && rm -f tags && git reset --hard origin/master'

# ZSH Settings
bindkey -v
# use the vi navigation keys (hjkl) besides cursor keys in menu completion
bindkey -M menuselect 'h' vi-backward-char        # left
bindkey -M menuselect 'k' vi-up-line-or-history   # up
bindkey -M menuselect 'l' vi-forward-char         # right
bindkey -M menuselect 'j' vi-down-line-or-history # bottom

function zle-line-init zle-keymap-select {
    VIM_PROMPT="%{$fg_bold[yellow]%} [% NORMAL]% %{$reset_color%}"
   	RPS1="${${KEYMAP/vicmd/$VIM_PROMPT}/(main|viins)/} $EPS1"
    zle reset-prompt
}
zle -N zle-line-init
zle -N zle-keymap-select

## Auto Completion
autoload -Uz compinit
compinit
zstyle ':completion:*' menu select
setopt COMPLETE_ALIASES

# Prompt
#source ~/repos/powerlevel10k/powerlevel10k.zsh-theme
#source ~/Repos/agnoster-zsh-theme/agnoster.zsh-theme

source /home/fynn/repos/zsh-syntax-highlighting/zsh-syntax-highlighting.zsh
