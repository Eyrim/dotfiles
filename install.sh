#!/bin/zsh

function setup-symlinks() {
    # Symlink zshrc from config dir to ~
    ln -s "${XDG_CONFIG_DIR}/.zshrc" "${XDG_CONFIG_DIR}/.zshrc";

    # Symlink scripts to proper place
    ln -s "${XDG_CONFIG_DIR}/scripts/" "${XDG_CONFIG_DIR}/scripts";
}

# Setup the assets used by the system, this doesn't include things like css files for wofi
# This is more stuff like my background
function setup-assets() {
    asset_dir="assets";

    ln -s "${XDG_CONFIG_DIR}/${asset_dir}" "${HOME}/Documents/${asset_dir}";
}

setup-assets;
setup-symlinks;

