#!/bin/zsh

config="${HOME}/.config";

function setup-symlinks() {
    # Symlink zshrc from config dir to ~
    ln -s "${config}/.zshrc" "${HOME}/.zshrc";

    # Symlink scripts to proper place
    ln -s "${config}/scripts/" "${HOME}/scripts";
}

# Setup the assets used by the system, this doesn't include things like css files for wofi
# This is more stuff like my background
# 
# Note: This works by just moving every file in the assets dir here to the documents dir as is, don't expect anything fancy
function setup-assets() {
    for f in $(find "${config}/assets");
    do
        # This will break if you have forward slashes in your file name, but if you do that you don't deserve a nice wallpaper
        name=$(echo "${f}" | awk -F '/' '{print $(NF)}'); # Get the last column
        # TODO: Track down the find flag that doesn't print the assets dir here, this is a lazy hack to get rid of that behaviour manually
        if [[ "$name" != "assets" ]];
        then
            ln -s "$f" "${HOME}/Documents/${name}";
        fi
    done
}

setup-assets;
setup-symlinks;

