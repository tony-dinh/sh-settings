#!/bin/zsh

    # Owner
    export USER_NAME="tonydinh"

    # FileSearch
    function f() { find . -iname "*$1*" ${@:2} }
    function r() { grep "$1" ${@:2} -R . }

    #mkdir and cd
    function mkcd() { mkdir -p "$@" && cd "$_"; }

    # Aliases
    alias ..='cd ..'
    alias astro='cd ~/Documents/dev/astro'
    alias dev='cd ~/Documents/dev'
    alias envconfig='vim ~/Documents/dev/sh-settings/zsh_profile/env.sh'
    alias ls='ls -G'
    alias vimconfig='vim ~/Documents/dev/sh-settings/.vimrc'
    alias with_aws='env AWS_ACCESS_KEY_ID=$(security find-generic-password -a AWS_KEY -w) AWS_SECRET_ACCESS_KEY=$(security find-generic-password -a AWS_SECRET_KEY -w) AWS_KEY=$(security find-generic-password -a AWS_KEY -w) AWS_SECRET=$(security find-generic-password -a AWS_SECRET_KEY -w) '
    alias zshconfig='vim ~/Documents/dev/sh-settings/zsh_profile/.zshrc'
    alias vimupdate='~/Documents/dev/sh-settings/update-vim.sh'
    alias envupdate='~/Documents/dev/sh-settings/update-zsh.sh'
    
    export NVM_DIR="/Users/tonydinh/.nvm"
    [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm

