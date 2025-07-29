#!/bin/zsh

set -e;

# Returns the first argument passed to it if it is a string with a value (see, -z).
# If the first arg does not have a value, then returns the second arg, regardless of its value.
function arg-or() {
    if [[ -z "$1" ]]; then
        echo "$2";
        return 0;
    fi

    echo "$1";
    return 0;
}

CONFIG_DIR=$(arg-or "${XDG_CONFIG_DIR}" "${HOME}/.config");

function setup-symlinks() {
    # Symlink zshrc from config dir to ~
    ln -s "${CONFIG_DIR}/.zshrc" "${HOME}/.zshrc";

    # Symlink scripts to proper place
    ln -s "${CONFIG_DIR}/scripts/" "${HOME}/scripts";
}

# Setup the assets used by the system, this doesn't include things like css files for wofi
# This is more stuff like my background
function setup-assets() {
    asset_dir="assets";

    ln -s "${CONFIG_DIR}/${asset_dir}" "${HOME}/Documents/${asset_dir}";
}

setup-assets;
setup-symlinks;
