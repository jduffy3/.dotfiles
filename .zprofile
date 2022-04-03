export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion


function diary {
  YEAR=`date +%Y`
  NUM_AND_MONTH=`date +"%m-%b"`
  mkdir -p "$HOME/Documents/devdiary/$YEAR/$NUM_AND_MONTH"

  NUM_AND_DAY=`date +"%d-%a"`
  ENTRY="$HOME/Documents/devdiary/$YEAR/$NUM_AND_MONTH/$NUM_AND_DAY.txt"

  touch $ENTRY

  TIME=$(date +%T)
  echo $TIME >> $ENTRY && vim "+ normal G $" $ENTRY
}

function entries {
  YEAR=`date +%Y`
  NUM_AND_MONTH=`date +"%m-%b"`

  cat $HOME/Documents/devdiary/$YEAR/$NUM_AND_MONTH/*
}

export GOHOME=$HOME/go
export GOPATH=$HOME/go
export DOTFILES=$HOME/.dotfiles

eval "$(/opt/homebrew/bin/brew shellenv)"

function cheat {
  curl https://cht.sh/$1
}

#git
alias gs='git status'
alias gac='git commit -am'
alias gcm='git commit -m'
alias gs='git status'
alias gc='git checkout'
alias gb='git branch'
alias gd='git branch -d'

#alias dev="cd $HOME/Developer"
alias dev="ls  $HOME/Developer | fzf"
alias dotfiles="cd $DOTFILES"
