

# simple PS1
export PS1='[\t] \w> '


# key binds
# search history with already typed
bind '"\e[A": history-search-backward'
bind '"\e[B": history-search-forward'

#use ctl keys to move forward and back in words
bind '"\e[5C":forward-word'
bind '"\e[5D":backward-word'
bind '"\e[1;5C":forward-word'
bind '"\e[1;5D":backward-word'
bind '"\e\e[C":forward-word'
bind '"\e\e[D":backward-word'


# aliases
if [ "$(uname)" =~ "Darwin" ]; then
    alias ls='ls -hG'
else
    alias ls='ls --color=auto'
fi

alias ll='ls -Al'
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


