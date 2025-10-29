#!/bin/zsh

# Make a dir and cd into it in one go
function mkcd () {
    mkdir $1;
    cd $1;
}
# Source zshrc without having to specify the path each time
# Nice when I'm somewhere random and can't be bothered to cd
alias src-zsh='source ~/.zshrc';
# Turbo lazy clear
alias c='clear';
# Clear and ls -la
alias cls='clear; ls -laG';
# cd to home and clear
alias cdc='cd;c';
# Turn off pc without as much typing because i am oh so very lazy
alias off='shutdown now';

