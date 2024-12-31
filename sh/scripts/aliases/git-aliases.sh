gs() {
    git status;
}

gp() {
    git pull;
}

ga() {
        git status -s | fzf --sync --preview="echo {} | awk '{print $2}' | xargs git diff --color -- " | awk '{print $2}' | xargs git add;
}
