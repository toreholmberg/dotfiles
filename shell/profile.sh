# load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

[ -s "$HOME/.nvm/nvm.sh" ] && . "$HOME/.nvm/nvm.sh" # This loads nvm

# use default node version
nvm use default

# adapt PATH environment variable for use with Homebrew
export PATH=/usr/local/sbin:$PATH

# ssh-add permanent
ssh-add ~/.ssh/id_rsa &>/dev/null

export JAVA_HOME=`/usr/libexec/java_home -v 1.8`

# aww colors..
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export GREP_OPTIONS='--color=auto'

# recursively search all files in director for a string
function search() {
	find . -type f -print0 | xargs -0 grep -l "$@"
}
