# simple http server
alias http='python -m SimpleHTTPServer $1'

# recursively search all files in director for a string
function search() {
  find . -type f -print0 | xargs -0 grep -l "$@"
}

# remove .DS_Store files
function remove_ds_store() {
  find . -name '*.DS_Store' -type f -delete
}

function flush_dns() {
  sudo dscacheutil -flushcache;sudo killall -HUP mDNSResponder;say cache flushed
}

# creates react app from skeleton repo
function new_react_app() {
  if [ "$1" = "" ]
  then
    echo "Usage: new_react_app <app-name>"
  else
    git clone git@github.com:toreholmberg/react-skeleton.git $1
    cd $1 && rm -rf .git && git init && yarn
  fi
}
