function grit() {
    if [ ! -d ".git" ]; then
        if read -q '?Not in a git repo, run git init? '; then
        	echo
        	git init
        else
            	return
        fi
    fi
    git config user.email "$GITHUB_EMAIL"
    git config user.name "$GITHUB_NAME"
    git config commit.gpgsign true
    git config user.signingkey "$GITHUB_GPG_KEY"
    echo "Set email, name, and signing key for this repo."
}
