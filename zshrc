
# Add RVM to PATH for scripting. Make sure this is the last PATH variable change.
eval "$(rbenv init -)"

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion" # This loads nvm bash_completion

alias dev="cd $HOME/Developer"
alias spell="cat /usr/share/dict/words | grep $1"

#git
alias gac="git commit -am"
alias gcm="git commit -m"
alias gs="git status"
alias gc="git checkout"
alias gb="git branch"
alias gd="git branch -d"
export PATH="/usr/local/opt/gnuplot@4/bin:$PATH"

#npm
alias npmdev="npm install --save-dev"

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

alias gt="./gradlew test"
