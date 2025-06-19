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
function setup-assets() {
    asset_dir="assets";

    ln -s "${config}/${asset_dir}" "${HOME}/Documents/${asset_dir}";
}

setup-assets;
setup-symlinks;

