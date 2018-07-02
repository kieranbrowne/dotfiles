# my scripts
PATH="$HOME/bin:$PATH"
# latex
export PATH=/usr/local/texlive/2018basic/bin/x86_64-darwin/:$PATH

# don't put duplicate lines or lines starting with space in the history.
HISTCONTROL=ignoreboth

# setup callable history
shopt -s histappend
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"
HISTSIZE=5000
HISTFILESIZE=10000

# update the values of LINES and COLUMNS after each command
shopt -s checkwinsize

# "**" matches all files in zero or more directories.
shopt -s globstar


# Aliases
alias vim='/Users/kieran/vim/src/vim'
alias c="clear"
alias l="ls"
alias vi="vim"

#git
alias gs="git status"
alias gd="git diff"
alias ga="git add"
alias gc="git commit -m"
alias gcam="git commit -a -m"
alias gp="git pull"
alias gpom="git push origin master"

recursivegrep () { grep -r "$*" . }
alias rg="recursivegrep"

# Clojure
alias startrepl="screen -dmS clojure_repl lein repl"
alias sr="screen -dmS clojure_repl lein repl"
alias viewrepl="screen -R clojure_repl"
alias vr="screen -R clojure_repl"

# kill all detached screens
killscreens () {
    screen -ls | grep Detached | cut -d. -f1 | awk '{print $1}' | xargs kill
}

CASE_SENSITIVE="false"

