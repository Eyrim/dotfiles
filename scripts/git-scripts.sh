#!/bin/zsh

alias gs="git status";
alias gp="git pull";
alias cgs="clear; git status";
alias ga='git diff --name-only | fzf --sync --preview="git diff --color -- {}" | xargs git add';
alias branch="git branch --show-current";

