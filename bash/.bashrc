

# key binds
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'


# aliases
alias ls='ls --color=auto'
alias ll='ls -al'
alias lll='lsl -l'
alias grep='grep --color=auto'

# functions

# cd, and then ll
function cdl() {
	cd $@
	pwd
	ls -l
}

# ls --> less
function lsl(){
	ls $@ | less
}


