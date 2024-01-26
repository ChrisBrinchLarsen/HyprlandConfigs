#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

bind "set completion-ignore-case on"
bind "set show-all-if-ambiguous on"

alias ls='ls --color=auto'
alias l='ls -la'
alias ld='ls -lD'
alias add='sudo pacman -S'
alias remove='sudo pacman -Rns'
alias search='sudo pacman -Ss'
alias hyprconf='nvim ~/.config/hypr/hyprland.conf'
alias grep='grep --color=auto'
alias setwp='bash ~/.scripts/setwp.sh'
alias c='clear'

# Default prompt in case we need it
#PS1='[\u@\h \W]\$ '

# Empty prompt to be appended to
PS1=''

# Attempts at automatically detecting git repositories
#if [ -d './.git' ]; then
#  echo "git here"
  #PS1='\[\e[1;35m\](repo) '
#fi

# Actual custom prompt
PS1=$PS1'\[\e[1;31m\]\u\[\e[1;37m\]|\[\e[1;36m\]arch \[\e[0;35m\][\w] \[\e[1;32m\]\$\[\e[0m\] '
