#!/bin/zsh
export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="custom"
eval `dircolors ~/.dircolors`

# Aliases
alias zshrc="vim ~/.zshrc"
alias vimrc="vim ~/.vimrc"
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

alias gotovol=". vol"

#openFrameworks
alias mr="make run"
alias mmr="make && make run"

case "$(uname -s)" in

    Darwin)
        goto() {
            if [ -d "/Applications/XAMPP/htdocs/$1/wp-content/themes/$1/" ]; then
                cd "/Applications/XAMPP/htdocs/$1/wp-content/themes/$1/"
            elif [ -d "/Applications/XAMPP/htdocs/$1" ]; then
                cd "/Applications/XAMPP/htdocs/$1"
            fi
        }
        ;;

    Linux)
        goto() {
            if [ -d "/opt/lampp/htdocs/$1/wp-content/themes/$1/" ]; then
                cd /opt/lampp/htdocs/$1/wp-content/themes/$1/
            elif [ -d "/opt/lampp/htdocs/$1" ]; then
                cd "/opt/lampp/htdocs/$1"
            fi
        }
        ;;

    *)
        echo "cannot distinquish operating system"
        ;;
esac


# kill all detached screens
killscreens () {
    screen -ls | grep Detached | cut -d. -f1 | awk '{print $1}' | xargs kill
}

nrepl () {
    screen -d -m lein repl :headless :port $1
}

CASE_SENSITIVE="false"

export UPDATE_ZSH_DAYS=30
DISABLE_UPDATE_PROMPT=true
DISABLE_AUTO_UPDATE=true

DISABLE_LS_COLORS="false"

HIST_STAMPS="dd.mm.yyyy"
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH="/opt/local/bin:/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"
export PATH=$PATH:~/bin
export PATH=$PATH:~/.cabal/bin
export PATH=$PATH:/home/kieran/anaconda2/bin

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='mvim'
 fi
export EDITOR='vim'

# ssh
if [ -d /home/pi/of_v0.8.4_linuxarmv7l_release/ ]
then
    export MAKEFLAGS=-j4 PLATFORM_VARIANT=rpi2
    echo oF on rPi2
fi
# Haskell stuff
export CABAL_HOME=$HOME/.cabal
export PATH=$CABAL_HOME/bin:$PATH

### Added by the Heroku Toolbelt
export PATH="/usr/local/heroku/bin:$PATH"

# set up callable history
HISTSIZE=5000
HISTFILESIZE=10000
#shopt -s histappend
export PROMPT_COMMAND="history -a; history -c; history -r; $PROMPT_COMMAND"

export NVM_DIR="/home/kieran/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
