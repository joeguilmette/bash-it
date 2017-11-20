alias plz='sudo "$BASH" -c "$(history -p !!)"'
alias mosh420='mosh --ssh="ssh -p 420"'
alias gitrm='git rm $(git ls-files --deleted)'
alias hide='defaults write com.apple.finder AppleShowAllFiles NO && sudo killall Finder && clear'
alias show='defaults write com.apple.finder AppleShowAllFiles YES && sudo killall Finder && clear'
alias pull='bash ~/.bash_it/plex/rs.sh'
source ~/.bash_it/plex/rs.sh
alias mux='tmuxinator'
alias ref='cd .. && cd -'
alias gs='git status'
alias gb='git branch'
alias go='git checkout'
alias ga='git add'
alias gc='git commit'
alias gh="git log --pretty=format:'%h %ad | %s%d [%an]' --graph --date=short"
alias pg='ping -c 3 google.com'

export EDITOR=vim
export PATH=$PATH:/usr/games/bin

# source ~/.bin/tmuxinator.bash
