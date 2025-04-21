#!/bin/zsh

setup-git() {
    # Default config location is ~/.gitconfig, but this lets me track everything
    # In the same place
    export GIT_CONFIG=~/.config/git/.gitconfig;
}

setup-git;

