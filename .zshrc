# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH
PATH=$PATH:~/.local/bin


# GENERAL EXPORTS
# ===============

# Path to your oh-my-zsh installation.
export ZSH="/home/$USER/.oh-my-zsh"
export EDITOR='vim'
export MANPATH="$MANPATH:$HOME/man"
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh" # This loads nvm
export BETTER_EXCEPTIONS=1
export JAVA_HOME=/usr/lib/jvm/java-8-openjdk-amd64

# Load a zsh theme (or "random" for a random theme)
ZSH_THEME="ben"

zle_highlight=(default:bold)


# Which plugins would you like to load? (plugins can be found in ~/.oh-my-zsh/plugins/*)
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  docker
  docker-compose
  zsh-syntax-highlighting
  zsh-autosuggestions
  zsh-completions
  git-open
)

source $ZSH/oh-my-zsh.sh

# Fix the comments color in zsh-syntax-highlighting (default seems to use background color)
typeset -A ZSH_HIGHLIGHT_STYLES
ZSH_HIGHLIGHT_STYLES[comment]='fg=white,bold'

# KEYBINDINGS
# ===========

# Vim-like keybindings (a bit buggy)
# bindkey -v

# Bind ctrl-backspace to delete previous word
bindkey '^H' backward-kill-word
# Delete to the end of line
bindkey '^O' kill-region
# Edit the line in $EDITOR
bindkey '^X' edit-command-line



# ALIASES
# =======

# Set personal aliases, overriding those provided by oh-my-zsh libs,
# plugins, and themes. Aliases can be placed here, though oh-my-zsh
# users are encouraged to define aliases within the ZSH_CUSTOM folder.
# For a full list of active aliases, run `alias`.
alias xcl="xclip -selection clipboard"
alias tmr="gio trash"
alias brg="xbacklight -set"
alias cat="bat"
alias du1="du . -ha --max-depth=1 | sort -h"
alias goo="google-chrome-stable"
alias ff="firefox-quantum"
alias grep="grep -i"
alias py="python3"
alias v="vim"
alias rr="ranger"
alias gpom="git push origin master"
alias pwg="pwgen -sy 25 1"
alias pwgx="pwgen -sy 25 1 | xcl"
alias tmux="tmux -2"
alias cls="clear;ls"
alias fd="fd -HI"
alias lst="ls -tr"
alias grbim="git rebase -i master"
alias gstu="git stash --include-untracked"
alias ggcm="git log --left-right --graph --cherry-mark --oneline"
alias gloga="git log --branches --remotes --tags --graph --oneline --decorate"
alias glogas="git log --graph --oneline --decorate --all"
alias code="GTK_IM_MODULE='xim' code"
alias ssh="TERM=xterm-256color ssh"
alias mv="mv -i"
alias dcoud="dco up -d"
alias cdd="cd .."
alias cddd="cd ../.."
alias cdddd="cd ../../.."
alias cddddd="cd ../../../.."
alias cdddddd="cd ../../../../.."

# FUNCTIONS
# =========

function ggcmo() {
  BRANCH=$(git rev-parse --abbrev-ref HEAD)
  ggcm "$BRANCH"...origin/"$BRANCH"
}

# Turn a file into html and open it in firefox (for annoying formats)
function tohtml() {
  pandoc -s -t html -i "$1" -o "$1.html"
  firefox-quantum "$1.html"
}

# Create a dir and cd into it
function mkcd() {
  mkdir -p -- "$1" && cd -P -- "$1"
}

# Quickly activate/deactivate system notifications in xfce
function dnd() {
  if [[ "$1" == "true" ]]; then
    echo "Do not disturb mode enabled"
  elif [[ "$1" == "false" ]]; then
    echo "Notifications back on"
  else
    echo "Error: use 'dnd false' or 'dnd true' to activate or deactivate notifications"
    return
  fi	
  xfconf-query --channel xfce4-notifyd --property /do-not-disturb --set "$1"
}

# Load the z script
. /home/$USER/apps/z/z.sh

# DEFAULT SETTINGS
# ================

# Uncomment the following line to use case-sensitive completion.
# CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion. Case
# sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
# COMPLETION_WAITING_DOTS="true"

# Uncomment the following line if you want to disable marking untracked files
# under VCS as dirty. This makes repository status check for large repositories
# much, much faster.
# DISABLE_UNTRACKED_FILES_DIRTY="true"

# Uncomment the following line if you want to change the command execution time
# stamp shown in the history command output.
# You can set one of the optional three formats:
# "mm/dd/yyyy"|"dd.mm.yyyy"|"yyyy-mm-dd"
# or set a custom format using the strftime function format specifications,
# see 'man strftime' for details.
# HIST_STAMPS="mm/dd/yyyy"

# Would you like to use another custom folder than $ZSH/custom?
# ZSH_CUSTOM=/path/to/new-custom-folder

# You may need to manually set your language environment
# export LANG=en_US.UTF-8

# Preferred editor for local and remote sessions
# if [[ -n $SSH_CONNECTION ]]; then
#   export EDITOR='vim'
# else
#   export EDITOR='mvim'
# fi

# Set list of themes to load
# Setting this variable when ZSH_THEME=random
# cause zsh load theme from this variable instead of
# looking in ~/.oh-my-zsh/themes/
# An empty array have no effect
# ZSH_THEME_RANDOM_CANDIDATES=( "robbyrussell" "agnoster" )

# Compilation flags
# export ARCHFLAGS="-arch x86_64"

# ssh
# export SSH_KEY_PATH="~/.ssh/rsa_id"

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/opt/google-cloud-sdk/path.zsh.inc' ]; then . '/opt/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/opt/google-cloud-sdk/completion.zsh.inc' ]; then . '/opt/google-cloud-sdk/completion.zsh.inc'; fi

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
export PATH="/home/ben/apps/git-fuzzy/bin:$PATH"



# export ZSH_AUTOSUGGEST_HIGHLIGHT_STYLE='fg=8'
