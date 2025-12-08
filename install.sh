#!/bin/zsh

# This is really bad nix/stow just let it happen its fine

# set -e;

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

config_dir=$(arg-or "${XDG_CONFIG_DIR}" "${HOME}/.config");

function setup-symlinks() {
    # Symlink zshrc from config dir to ~
    ln -s "${config_dir}/.zshrc" "${HOME}/.zshrc";

    # Symlink scripts to proper place
    ln -s "${config_dir}/scripts/" "${HOME}/scripts";

    # Symlink .gitconfig
    # This could also be done via setting $GIT_CONFIG
    # But this seems more normal
    ln -s "${config_dir}/git/.gitconfig" "${HOME}/.gitconfig";

    # Symlink ripgrep config
    ln -s "${config_dir}/.ripgreprc" "${HOME}/.ripgreprc";
}

# Setup the assets used by the system, this doesn't include things like css files for wofi
# This is more stuff like my background
function setup-assets() {
    asset_dir="assets";

    ln -s "${config_dir}/${asset_dir}" "${HOME}/Documents/${asset_dir}";
}

setup-assets;
setup-symlinks;
