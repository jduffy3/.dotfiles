# Path to your Oh My Zsh installation.
export ZSH="$HOME/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time Oh My Zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="robbyrussell"

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

plugins=(git)

source $ZSH/oh-my-zsh.sh

# User configuration
# export MANPATH="/usr/local/man:$MANPATH"

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
if [[ -n $SSH_CONNECTION ]]; then
  export EDITOR='vim'
else
  export EDITOR='nvim'
fi

# Set personal aliases, overriding those provided by Oh My Zsh libs,
# plugins, and themes. Aliases can be placed here, though Oh My Zsh
# users are encouraged to define aliases within a top-level file in
# the $ZSH_CUSTOM folder, with .zsh extension. Examples:
# - $ZSH_CUSTOM/aliases.zsh
# - $ZSH_CUSTOM/macos.zsh
# For a full list of active aliases, run `alias`.
#
# Example aliases
# alias zshconfig="mate ~/.zshrc"
# alias ohmyzsh="mate ~/.oh-my-zsh"

# alias nvim to vim
alias vim="nvim"

# tool version manager
export PATH="${ASDF_DATA_DIR:-$HOME/.asdf}/shims:$PATH"

alias gs='git status'
alias gl='git pull'
alias gp='git push'
alias gd='git diff | nvim'
alias gap='git add -p'
alias gau='git add --update'
alias gc='git commit -v'
alias gca='git commit -v -a'
alias gb='git --no-pager branch'
alias gba='git branch -a'
alias gco='git checkout'
alias gcob='git checkout -b'
alias gcot='git checkout -t'
alias gcotb='git checkout --track -b'
alias glog='git log'
alias glogp='git log --pretty=format:"%h %s" --graph'

alias new-uuid='uuidgen | tr "[:upper:]" "[:lower:]" | tr -d "\n"'
alias copy-uuid='new-uuid | pbcopy; echo "new uuid in clipboard";'

# Set up fzf key bindings and fuzzy completion
source <(fzf --zsh)

# fuzzy find git checkout branch
alias gcb='git branch | fzf | cut -c 3- | xargs git checkout'

# fuzzy find to dev project
# alias dev='cd $HOME/Developer'
dev() {
  local base="$HOME/Developer"
  local selected fullpath session

  selected=$(
    for dir in "$base"/*/*(/N); do
      [[ -d "$dir/.git" ]] && echo "${dir#$base/}"
    done | sort | fzf --prompt="repo> "
  ) || return

  fullpath="$base/$selected"
  session="${selected}"

  if [[ -n "$TMUX" ]]; then
    tmux new-session -d -s "$session" -c "$fullpath" 2>/dev/null || true
    tmux switch-client -t "$session"
  else
    tmux new-session -A -s "$session" -c "$fullpath"
  fi
}

function cheat {
  curl https://cht.sh/$1
}

function diary {
  YEAR=`date +%Y`
  NUM_AND_MONTH=`date +"%m-%b"`
  mkdir -p "$HOME/Documents/devdiary/$YEAR/$NUM_AND_MONTH"

  NUM_AND_DAY=`date +"%d-%a"`
  ENTRY="$HOME/Documents/devdiary/$YEAR/$NUM_AND_MONTH/$NUM_AND_DAY.txt"

  touch $ENTRY

  TIME=$(date +%T)
  #echo $TIME >> $ENTRY && vim "+ normal G $" $ENTRY
  echo $TIME >> $ENTRY
  vim "+ normal G $" $ENTRY
}

function journal {
  YEAR=`date +%Y`
  NUM_AND_MONTH=`date +"%m-%b"`
  mkdir -p "$HOME/Documents/.journal/$YEAR/$NUM_AND_MONTH"

  NUM_AND_DAY=`date +"%d-%a"`
  ENTRY="$HOME/Documents/.journal/$YEAR/$NUM_AND_MONTH/.$NUM_AND_DAY.txt"

  touch $ENTRY

  TIME=$(date +%T)
  #echo $TIME >> $ENTRY && vim "+ normal G $" $ENTRY
  echo $TIME >> $ENTRY
  vim "+ normal G $" $ENTRY
}

function entries {
  YEAR=`date +%Y`
  NUM_AND_MONTH=`date +"%m-%b"`

  tail -n +1 $HOME/Documents/devdiary/$YEAR/$NUM_AND_MONTH/*
}

