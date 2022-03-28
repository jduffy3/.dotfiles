export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion

alias dev="cd $HOME/Developer"
alias spell="cat /usr/share/dict/words | grep $1"

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

eval "$(/opt/homebrew/bin/brew shellenv)"
