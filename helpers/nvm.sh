# lazyload nvm
# all props goes to http://broken-by.me/lazy-load-nvm/
# grabbed from reddit @ https://www.reddit.com/r/node/comments/4tg5jg/lazy_load_nvm_for_faster_shell_start/

lazynvm() {
  unset -f nvm node npm gulp yarn webpack sls
  export NVM_DIR=~/.nvm
  [ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
}

nvm() {
  lazynvm
  nvm $@
}

node() {
  lazynvm
  node $@
}

npm() {
  lazynvm
  npm $@
}

gulp() {
  lazynvm
  gulp $@
}

yarn() {
  lazynvm
  yarn $@
}

webpack() {
  lazynvm
  webpack $@
}

sls() {
  lazynvm
  sls $@
}