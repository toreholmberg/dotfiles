# load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

[ -s "$HOME/.nvm/nvm.sh" ] && . "$HOME/.nvm/nvm.sh" # This loads nvm

# use default node version
nvm use default

# ulimit
ulimit -n 10000

# adapt PATH environment variable for use with Homebrew
export PATH=/usr/local/sbin:$PATH

# ssh-add permanent
ssh-add ~/.ssh/id_rsa &>/dev/null

# colors
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export GREP_OPTIONS='--color=auto'
