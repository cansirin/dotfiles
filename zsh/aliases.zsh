# make sure zsh config is loaded
alias reload!='source ~/.zshrc'

# Detect which `ls` flavor is in use
if ls --color > /dev/null 2>&1; then # GNU `ls`
    colorflag="--color"
else # OS X `ls`
    colorflag="-G"
fi

# file system aliases
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'

alias vim='/usr/local/Cellar/macvim/7.4-81/bin/vim'
alias vi=vim

# file listing aliases
alias l="ls -lahF ${colorflag}"

# using supervisorctl like crazy so assign it to `s`
alias s='supervisorctl'


