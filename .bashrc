# .bashrc

# Source global definitions
if [ -f /etc/bashrc ]; then
	. /etc/bashrc
fi
PS1='$(pwd) $ '
alias c=clear
alias ll="ls -alrt"
alias h=history
alias gitpush="git push -u origin master"
alias gitcommit="git commit -a -m \"message\""
alias ls="ls -x"


export PATH=.:$PATH

# User specific aliases and functions
