alias plz='sudo "$BASH" -c "$(history -p !!)"'
alias mosh420='mosh --ssh="ssh -p 420"'
alias gitrm='git rm $(git ls-files --deleted)'
alias hide='defaults write com.apple.finder AppleShowAllFiles NO && sudo killall Finder && clear'
alias show='defaults write com.apple.finder AppleShowAllFiles YES && sudo killall Finder && clear'
alias pull='bash ~/Dropbox/Dev/git/pull/pull.sh'
alias mux='tmuxinator'
alias ref='cd .. && cd -'

export EDITOR=vim
export PATH=$PATH:/usr/games/bin

#source ~/.bin/tmuxinator.bash
