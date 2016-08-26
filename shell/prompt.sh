# Based on https://gist.github.com/srguiwiz/de87bf6355717f0eede5

function git_branch {
  git branch --no-color 2> /dev/null | sed -e '/^[^*]/d' -e 's/* \(.*\)/\1/'
}

function markup_git_branch {
  if [[ "x$1" = "x" ]]; then
    echo -e "$1"
  else
    if [[ $(git status 2> /dev/null | tail -n1) = "nothing to commit, working directory clean" ]]; then
      echo -e ' \033[1;32m'"$1"'\033[0;30m'
    else
      echo -e ' \033[1;31m'"$1"'♤\033[0;30m'
    fi
  fi
}

export PS1='\h$(markup_git_branch $(git_branch))\[\033[0m\] \W$ '
