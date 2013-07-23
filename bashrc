export EDITOR=vim
export CLICOLOR=1
export GREP_OPTIONS="--color=auto"
export LSCOLORS=Exfxcxdxbxegedabagacad
export HISTCONTROL=ignoredups

#Prompt and prompt colors
# 30m - Black
# 31m - Red
# 32m - Green
# 33m - Yellow
# 34m - Blue
# 35m - Purple
# 36m - Cyan
# 37m - White
# 0 - Normal
# 1 - Bold
function set_virtualenv () {
  if test -z "$VIRTUAL_ENV" ; then
      PYTHON_VIRTUALENV=""
  else
      PYTHON_VIRTUALENV="${BLUE}[`basename \"$VIRTUAL_ENV\"`]${COLOR_NONE} "
  fi
}

function set_git_branch() {
  branch=`git branch 2> /dev/null | grep -e ^* | tr -d "* "`
  if [ -n "$branch" ]; then
    GIT_BRANCH=" ($branch)"
  else
    GIT_BRANCH=""
  fi
}

function set_prompt() {
  set_git_branch
  set_virtualenv

  local BLACK="\[\033[0;30m\]"
  local BLACKBOLD="\[\033[1;30m\]"
  local RED="\[\033[0;31m\]"
  local REDBOLD="\[\033[1;31m\]"
  local GREEN="\[\033[0;32m\]"
  local GREENBOLD="\[\033[1;32m\]"
  local YELLOW="\[\033[0;33m\]"
  local YELLOWBOLD="\[\033[1;33m\]"
  local BLUE="\[\033[0;34m\]"
  local BLUEBOLD="\[\033[1;34m\]"
  local PURPLE="\[\033[0;35m\]"
  local PURPLEBOLD="\[\033[1;35m\]"
  local CYAN="\[\033[0;36m\]"
  local CYANBOLD="\[\033[1;36m\]"
  local WHITE="\[\033[0;37m\]"
  local WHITEBOLD="\[\033[1;37m\]"
  export PS1="$PYTHON_VIRTUALENV$REDBOLD[\A]$GIT_BRANCH$GREENBOLD \W\[\033[00m\]> "
}
PROMPT_COMMAND=set_prompt

export GOPATH=~/Code/go
export PATH=$PATH:~/bin/:~Code/go/bin

# Some aliases
alias l=ls
alias cpwd='pwd | pbcopy'
alias cdwd='cd `pbpaste`'
