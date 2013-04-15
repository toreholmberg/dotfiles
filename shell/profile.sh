# enable rvm
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

# aww colors..
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export GREP_OPTIONS='--color=auto'

# recursively search all files in director for a stringfind . -type f -print0 | xargs -0 grep -l "channel-none"
function search() {
	find . -type f -print0 | xargs -0 grep -l "$@"
}
