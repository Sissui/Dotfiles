#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

PS1=' [$( __git_ps1) \W ]\n > '

# bash autocompletion
if [ -f /usr/share/bash-completion/bash_completion ];then
	. /usr/share/bash-completion/bash_completion
fi

# git PS1 prompt
if [ -f ~/Projects/Dotfiles/git-prompt.sh ];then
	. ~/Projects/Dotfiles/git-prompt.sh
fi

# general
alias c='clear'
alias Downloads='cd ~/Downloads'
alias Documents='cd ~/Documents'
alias Projects='cd ~/Projects'
alias Pictures='cd ~/Pictures'

# sudo
alias s='sudo'

# pacman
alias pc='sudo pacman'
alias pacman='sudo pacman'

# ls
alias ls='ls --color=auto'
alias l='ls -l --color=auto'
alias la='ls -la --color=auto'

# grep
alias grep='grep --color=auto'

# vim
alias v='vim'
alias sv='sudo vim'
alias vi='vim'

# git
alias g='git'
alias gs='git status'
alias gcm='git commit -m'

# fixes
alias cd..='cd ..'
alias dc='cd'
alias sl='ls'
alias :q='exit'
