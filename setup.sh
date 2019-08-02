#!/bin/bash

# This command:
# curl https://raw.githubusercontent.com/grant/dotfiles/master/setup.sh | sh

curl https://raw.githubusercontent.com/grant/dotfiles/master/.bash_profile > ~/.bash_profile
curl https://raw.githubusercontent.com/grant/dotfiles/master/.git-branch.sh > ~/.git-branch.sh
curl https://raw.githubusercontent.com/grant/dotfiles/master/.git-prompt.sh > ~/.git-prompt.sh

sleep 1 # wait for download

cat ~/.bash_profile

#source ~/.bash_profile
#source ~/.git-branch.sh
#source ~/.git-prompt.sh
