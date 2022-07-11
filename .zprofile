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

alias new-uuid='uuidgen | tr "[:upper:]" "[:lower:]" | tr -d "\n"'
alias copy-uuid='new-uuid | pbcopy; echo "new uuid in clipboard";'


# dotfiles
export DOTFILES=$HOME/.dotfiles


eval "$(/opt/homebrew/bin/brew shellenv)"

function cheat {
  curl https://cht.sh/$1
}

alias dev="cd ~/Developer"
#git
alias gs='git status'
alias gac='git commit -am'
alias gcm='git commit -m'
alias gs='git status'
alias gc='git checkout'
alias gb='git branch'
alias gd='git branch -d'

alias dotfiles="cd $DOTFILES"
alias vimrc='vim $HOME/.vim/vimrc'

alias vim='nvim'
alias vi='vim'

#So far only for mac...
[ -f ~/.javarc ] && source ~/.javarc
[ -f ~/.pythonrc ] && source ~/.pythonrc
[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
[ -f ~/.go.zsh ] && source ~/.go.zsh
[ -f ~/.stash.zsh ] && source ~/.stash.zsh

