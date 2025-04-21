#!/bin/zsh

function setup-git() {
    # Default config location is ~/.gitconfig, but this lets me track everything
    # In the same place
    export GIT_CONFIG=~/.config/git/.gitconfig;
}

function setup-symlinks() {
    # Symlink zshrc from config dir to ~
    ln -s ~/.config/.zshrc ~/.zshrc;
}

setup-symlinks;
setup-git;

