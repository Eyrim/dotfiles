#!/bin/zsh

function setup-symlinks() {
    # Symlink zshrc from config dir to ~
    ln -s ${HOME}/.config/.zshrc ${HOME}/.zshrc;

    # Symlink scripts to proper place
    ln -s ${HOME}/.config/scripts/ ~/scripts;
}

setup-symlinks;

