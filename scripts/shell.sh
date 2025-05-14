#!/bin/zsh

# Make a dir and cd into it in one go
alias mkcd='mkdir $1; cd $1;';
# Source zshrc without having to specify the path each time
# Nice when I'm somewhere random and can't be bothered to cd
alias src-zsh='source ~/.zshrc';
# Turbo lazy clear
alias c='clear';
# Clear and ls -la
alias cls='clear; ls -laG';

