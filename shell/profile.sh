# load RVM into a shell session *as a function*
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm"

export PATH="$PATH:$HOME/.rvm/bin" # Add RVM to PATH for scripting

# brew bash completion
if [ -f $(brew --prefix)/etc/bash_completion ]; then
  . $(brew --prefix)/etc/bash_completion
fi

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

# The next line updates PATH for the Google Cloud SDK.
if [ -f /Users/tore/google-cloud-sdk/path.bash.inc ]; then
  source '/Users/tore/google-cloud-sdk/path.bash.inc'
fi

# The next line enables shell command completion for gcloud.
if [ -f /Users/tore/google-cloud-sdk/completion.bash.inc ]; then
  source '/Users/tore/google-cloud-sdk/completion.bash.inc'
fi
