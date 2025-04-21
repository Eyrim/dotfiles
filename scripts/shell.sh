#!/bin/zsh

# Make a dir and cd into it in one go
mkcd () {
	mkdir $1;
	cd $1;
}

# Source zshrc without having to specify the path each time
# Nice when I'm somewhere random and can't be bothered to cd
src-zsh () {
	source ~/.zshrc;
}


# Turbo lazy clear
c () {
	clear;
}

# Clear and ls -la
cls () {
	clear;
	ls -laG;
}

