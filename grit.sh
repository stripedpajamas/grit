function grit() {
    if [ ! -d ".git" ]; then
        read -p "Not in a git repo, run git init? " -n 1 -r
        echo
        if [[ $REPLY =~ ^[Yy]$ ]]; then
            git init
        else
            return
        fi
    fi
    git config user.email "stripedpajamas273@gmail.com"
    git config user.name "Peter Squicciarini"
    git config commit.gpgsign true
    git config user.signingkey "$GITHUB_GPG_KEY" # should have this set somewhere else 
    echo "Set email, name, and signing key for this repo."
}
