#!/bin/zsh

function branch-for-prompt () {
    branch=$(git branch --show-current 2> /dev/null);

    if [[ "$?" == 0 ]];
    then
        echo "($branch)";
    fi
}

function load-nvm () {
    source /usr/share/nvm/init-nvm.sh # load nvm, might need to lazy load this in future as it can be quite slow
}

# Variables

# Avoid having to use the default ~/.gitconfig, I hate having dotfiles hanging around in ~, we have .config for a reason people
export GIT_CONFIG=~/.config/git/.gitconfig;
setopt PROMPT_SUBST;
export PATH=$PATH:/usr/local/go/bin:/home/eyrim/.local/share/bob/nvim-bin:$HOME/flutter-sdk/flutter/bin;
export PROMPT='%B%F{blue}%99~%f %F{#aee8cf}$(git branch --show-current 2> /dev/null)%f %F{#daaee8}%#%f%b ';
export EDITOR=$(which nvim);
export JAVA_HOME='/usr/lib/jvm/default';

# Use firefox as default browser
xdg-settings set default-web-browser firefox.desktop

# Source scripts

source ~/scripts/shell.sh
source ~/scripts/git-scripts.sh

