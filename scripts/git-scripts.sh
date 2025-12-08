#!/bin/zsh

set -u

alias gs="git status";
alias gp="git pull";
alias cgs="clear; git status";
alias ga='git diff --name-only | fzf --sync --preview="git diff --color -- {}" | xargs git add';
alias branch="git branch --show-current";

function remote() {
    push_url=$(git remote show $(git remote) | grep -iEo " +Push +URL: .*" | sed -E 's/ +Push +URL: (.*)/\1/g');
    is_https=$(echo "$push_url" | grep -E 'https://.+');

    if [[ -z "$is_https" ]]; then
        # TODO: when this breaks because i use something that is a different format, make it gooder
        push_url=$(echo "$push_url" | sed -E 's/git@(.+)\.com:(.+\/.+\.git)/https:\/\/\1\.com\/\2/g');
    fi

    echo "$push_url" | xargs -I {} python -m webbrowser "{}" 2&> /dev/null;
}

