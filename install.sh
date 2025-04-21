#!/bin/zsh

function setup-symlinks() {
    # Symlink zshrc from config dir to ~
    ln -s ~/.config/.zshrc ~/.zshrc;

    # Symlink scripts to proper place
    ls -s ~/.config/scripts/ ~/scripts/;
}

setup-symlinks;

