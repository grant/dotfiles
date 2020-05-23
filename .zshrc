# If you come from bash you might have to change your $PATH.
# export PATH=$HOME/bin:/usr/local/bin:$PATH

ZSH_DISABLE_COMPFIX=true

# Path to your oh-my-zsh installation.
export ZSH="/Users/timmerman/.oh-my-zsh"

# Set name of the theme to load --- if set to "random", it will
# load a random theme each time oh-my-zsh is loaded, in which case,
# to know which specific one was loaded, run: echo $RANDOM_THEME
# See https://github.com/ohmyzsh/ohmyzsh/wiki/Themes
ZSH_THEME="agnoster" # robbyrussell

# Uncomment the following line to use case-sensitive completion.
CASE_SENSITIVE="true"

# Uncomment the following line to use hyphen-insensitive completion.
# Case-sensitive completion must be off. _ and - will be interchangeable.
# HYPHEN_INSENSITIVE="true"

# Uncomment the following line to disable bi-weekly auto-update checks.
# DISABLE_AUTO_UPDATE="true"

# Uncomment the following line to automatically update without prompting.
# DISABLE_UPDATE_PROMPT="true"

# Uncomment the following line to change how often to auto-update (in days).
# export UPDATE_ZSH_DAYS=13

# Uncomment the following line if pasting URLs and other text is messed up.
# DISABLE_MAGIC_FUNCTIONS=true

# Uncomment the following line to disable colors in ls.
# DISABLE_LS_COLORS="true"

# Uncomment the following line to disable auto-setting terminal title.
# DISABLE_AUTO_TITLE="true"

# Uncomment the following line to enable command auto-correction.
# ENABLE_CORRECTION="true"

# Uncomment the following line to display red dots whilst waiting for completion.
COMPLETION_WAITING_DOTS="true"

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

# Which plugins would you like to load?
# Standard plugins can be found in ~/.oh-my-zsh/plugins/*
# Custom plugins may be added to ~/.oh-my-zsh/custom/plugins/
# Example format: plugins=(rails git textmate ruby lighthouse)
# Add wisely, as too many plugins slow down shell startup.
plugins=(
  git
  zsh-syntax-highlighting
  zsh-autosuggestions
)
setopt NO_CASE_GLOB

source $ZSH/oh-my-zsh.sh

# The next line updates PATH for the Google Cloud SDK.
if [ -f '/Users/timmerman/Downloads/google-cloud-sdk/path.zsh.inc' ]; then . '/Users/timmerman/Downloads/google-cloud-sdk/path.zsh.inc'; fi

# The next line enables shell command completion for gcloud.
if [ -f '/Users/timmerman/Downloads/google-cloud-sdk/completion.zsh.inc' ]; then . '/Users/timmerman/Downloads/google-cloud-sdk/completion.zsh.inc'; fi

# Disable user
prompt_context() {
  if [[ "$USER" != "$DEFAULT_USER" || -n "$SSH_CLIENT" ]]; then
    prompt_segment black default "%(!.%{%F{yellow}%}.)$USER"
  fi
}

# Legacy .bash_profile

export PATH=$PATH:/usr/local/git/bin:/usr/local/bin
export PATH="$PATH:/Applications/Visual Studio Code.app/Contents/Resources/app/bin"

# Maven
export PATH=$PATH:/opt/apache-maven/bin

# GOOGLE
alias sfo='ssh timmerman@timmerman.sfo.corp.google.com'
# glogin / prodaccess

alias ss='python -m SimpleHTTPServer'
alias p='pwd'
alias c='cd'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias ~='cd ~'
alias l='ls -al'
alias sl='ls'
alias z="du -sh ."

# Makes a directory and goes to it
function m () { mkdir -p "$@" && eval cd "\"\$$#\""; }

# History
export HISTFILESIZE=20000
export HISTSIZE=10000
# Ignore duplicates, ls without options and builtin commands
HISTCONTROL=ignoredups
export HISTIGNORE="&:ls:[bf]g:exit"

# Git
git config --global help.autocorrect 1
alias pull='git pull'
alias push='git push'
alias gc='git commit -s -m $1'
alias ga='git add -A'
alias gs='git status -sb'
alias gd='git diff --color'
alias gstat='git diff --stat'
alias clone='git clone'
alias log='git log --all --graph --decorate --oneline --abbrev-commit'
# Adds all and commits (gg 'Commit message')
function gg () {
  git add -A;
  git commit -m "$1";
  git push;
}

# Other

## Create a new directory and enter it
function md() { mkdir -p "$@" && cd "$@" }

## Find shorthand
function f() { find . -name "$1" 2>&1 | grep -v 'Permission denied' }

alias gf='gofmt -s -w .'

## Search history for term
alias his='history | grep $1'

## Copy Working Directory
alias cwd='printf "%q\n" "$(pwd)" | pbcopy'

## Chrome
alias chrome='open /Applications/Google\ Chrome.app'
alias canary='open /Applications/Google\ Chrome\ Canary.app'

## Language
export PATH="/Users/timmerman/.deno/bin:$PATH"
export GOPATH=$HOME/bin/go
export PATH=$PATH:$GOPATH/bin
export PATH="$HOME/.rbenv/bin:$PATH"
export PATH="$/Users/timmerman/.rvm/gems/ruby-2.3.3/bin:$PATH"
eval "$(rbenv init -)"
export PATH="$HOME/.cargo/bin:$PATH"
[[ -s "$HOME/.rvm/scripts/rvm" ]] && source "$HOME/.rvm/scripts/rvm" # Load RVM into a shell session *as a function*
export PATH="/usr/local/opt/ruby/bin:$PATH"

# The next line enables shell command completion for gcloud.
if [ -f '/Users/timmerman/Documents/google-cloud-sdk/completion.bash.inc' ]; then . '/Users/timmerman/Documents/google-cloud-sdk/completion.bash.inc'; fi
