

# aliases
alias ls='ls --color=auto'
alias ll='ls -al'
alias lll='lsl -l'
alias grep='grep --color=auto'

# functions

# cd to $1, and then ll
function cdl() {
	cd $1
	pwd
	ls -l
}

# ls --> less
function lsl(){
	ls $1 | less
}


