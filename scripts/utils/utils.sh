#!/bin/zsh

# Return 1 if any argument given is not present.
# Return 1 if no arguments are given (as all given arguments were present).
# Return 0 if all arguments given are present
function all_args_are_present() {
    for var in "$@"; do
        if [[ -z "$var" ]]; then
            exit 1;
        fi
    done

    return 0
}

function scripts_dir() {
    if [[ -n "$XDG_CONFIG_DIR" ]]; then
        echo "$XDG_CONFIG_DIR";
        exit 0;
    fi

    if [[ -n "$HOME" ]]; then
        echo "$HOME/.config/scripts";
        exit 0;
    fi

    # do some systems have a user path somewhere else?
    if [[ -n "$USER" ]]; then
        echo "/home/$USER/.config/scripts";
        exit 0;
    fi

    exit 1;
}

function install_shunit2() {
    shunit2=$(find ./ -type f -name shunit2);
    if [[ -z "${shunit2}" ]]; then
        echo "$shunit2" | head -n 1;
        exit 0;
    fi

    scriptsDir=$(scripts_dir);
    if [[ -d "$scriptsDir/shunit2/" ]]; then
        echo "$scriptsDir/shunit2/shunit2";
        exit 0;
    fi

    exit 1;
}

