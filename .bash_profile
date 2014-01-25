# Coloring bash
export CLICOLOR=1
export LSCOLORS=GxFxCxDxBxegedabagaced
export PS1="\e[0;31m\]\u\[\e[m\]:\[\e[0;37m\]\W\[\e[m\]$ "

# To make Grunt work
PATH=$PATH:/usr/local/share/npm/bin/

### Shortcuts

alias s='python -m SimpleHTTPServer'
alias attu='ssh gctimmer@attu.cs.washington.edu'

alias p='pwd'

alias c='cd'
alias ..='cd ..'
alias ...='cd ../..'
alias ....='cd ../../..'
alias ~='cd ~'

alias l='ls -al'
alias sl='ls'

# Makes a directory and goes to it
function m () { mkdir -p "$@" && eval cd "\"\$$#\""; }

alias st="open -a 'Sublime Text 2'"
alias preview="open -a 'Preview'"

alias z="du -sh ."

# Git

alias g='git'
alias pull='git pull origin master'
alias push='git push origin master'
alias gc='git commit -m $1'
alias ga='git add -A'
# Adds all and commits (gg 'Commit message')
function gg () {
  git add -A;
  git commit -m "$1";
  git push origin master;
}
alias gs='git status'
alias gd='git diff --color'
alias gdc='git diff --cached'
alias gstat='git diff --stat'

# Other

# Search history for term
alias his='history | grep $1'

# Copy Working Directory
alias cwd='printf "%q\n" "$(pwd)" | pbcopy'

# Get the number of lines of a certain filetype in the current working directory
function lines () { find . -name "*.$1" | xargs wc -l; }

alias chrome='open /Applications/Google\ Chrome.app'
alias canary='open /Applications/Google\ Chrome\ Canary.app'

### Help
alias h="echo 'p c ~ .. ... l m st preview sz g pull push gc ga gg gs gd gdc gstat his cwd lines'"
