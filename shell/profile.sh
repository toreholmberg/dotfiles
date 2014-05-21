# load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

[ -s "$HOME/.nvm/nvm.sh" ] && . "$HOME/.nvm/nvm.sh" # This loads nvm

# adapt PATH environment variable for use with Homebrew
export PATH=/usr/local/sbin:$PATH

# ssh-add permanent
ssh-add ~/.ssh/id_rsa &>/dev/null

# aww colors..
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export GREP_OPTIONS='--color=auto'

# recursively search all files in director for a string
function search() {
	find . -type f -print0 | xargs -0 grep -l "$@"
}
