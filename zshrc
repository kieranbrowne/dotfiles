#!/bin/zsh
source ~/.profile

plugins=(
    git
    osx
    )

export UPDATE_ZSH_DAYS=30
DISABLE_UPDATE_PROMPT=true
DISABLE_AUTO_UPDATE=true

DISABLE_LS_COLORS="false"

HIST_STAMPS="dd.mm.yyyy"

## setup om-my-zsh
export ZSH=$HOME/.oh-my-zsh
source $ZSH/oh-my-zsh.sh
ZSH_THEME="custom"
