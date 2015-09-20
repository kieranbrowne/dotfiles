export ZSH=$HOME/.oh-my-zsh

ZSH_THEME="custom"
eval `dircolors ~/.dircolors`

# Aliases
alias zshrc="vim ~/.zshrc"
alias vimrc="vim ~/.vimrc"
alias c="clear"
alias l="ls"

#git
alias gs="git status"
alias gd="git diff"
alias ga="git add"
alias gc="git commit -m"
alias gcam="git commit -a -m"
alias gp="git push"
alias gpom="git push origin master"

CASE_SENSITIVE="false"

export UPDATE_ZSH_DAYS=30
DISABLE_UPDATE_PROMPT=true
DISABLE_AUTO_UPDATE=true

DISABLE_LS_COLORS="false"

HIST_STAMPS="dd.mm.yyyy"
plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration

export PATH="/usr/local/sbin:/usr/local/bin:/usr/sbin:/usr/bin:/sbin:/bin:/usr/games:/usr/local/games"
export PATH=$PATH:~/bin
export PATH=$PATH:~/.cabal/bin

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
