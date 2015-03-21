alias plz='sudo "$BASH" -c "$(history -p !!)"'
alias mosh420='mosh --ssh="ssh -p 420"'
alias gitrm='git rm $(git ls-files --deleted)'
alias hide='defaults write com.apple.finder AppleShowAllFiles NO'
alias show='defaults write com.apple.finder AppleShowAllFiles YES'

export EDITOR=vim

#wordmove hack
function open { ssh -p 420 -t joe@$1 "sudo chgrp wordmove /var/www/*/htdocs" }
export -f open

#todo.sh
alias te='subl $HOME/Dropbox/Apps/todo/todo.txt'

function ta {
    /usr/local/Cellar/todo-txt/2.10/bin/todo.sh -d $HOME/Dropbox/Apps/todo/todo.cfg add "$@"
}

#alias tls='/usr/local/Cellar/todo-txt/2.10/bin/todo.sh -d $HOME/Dropbox/Apps/todo/todo.cfg ls'

tl()
{
    i=$@
    len=${#i}
    if [ "$i" == 0 ]
    then /usr/local/Cellar/todo-txt/2.10/bin/todo.sh -d $HOME/Dropbox/Apps/todo/todo.cfg ls
    else /usr/local/Cellar/todo-txt/2.10/bin/todo.sh -d $HOME/Dropbox/Apps/todo/todo.cfg ls $i
    fi
}


alias t='/usr/local/Cellar/todo-txt/2.10/bin/todo.sh -d $HOME/Dropbox/Apps/todo/todo.cfg'
source /usr/local/Cellar/todo-txt/2.10/etc/bash_completion.d/todo_completion complete -F _todo t



#weird cd shit that doesn't work

# ..() {
#     cd ../$@
# }
# ..2() {
#     cd ../../$@
# }

# ..3() {
#     cd ../../../$@
# }
# ..4() {
#     cd ../../../../$@
# }
# ..5() {
#     cd ../../../../../$@
# }

# _..()
# {
#     local cur=../${COMP_WORDS[COMP_CWORD]}
#     COMPREPLY=( $(compgen -d — $cur) )
#     local i=${#COMPREPLY[*]}
#     while [ $((--i)) -ge 0 ]; do
#         COMPREPLY[$i]=$(echo ${COMPREPLY[$i]} | sed -r ‘s/(\.\.\/)*//’)
#     done
# }
# complete -F _.. -o nospace -S / ..

# _..2()
# {
#     local cur=../../${COMP_WORDS[COMP_CWORD]}
#     COMPREPLY=( $(compgen -d — $cur) )
#     local i=${#COMPREPLY[*]}
#     while [ $((--i)) -ge 0 ]; do
#         COMPREPLY[$i]=$(echo ${COMPREPLY[$i]} | sed -r ‘s/(\.\.\/)*//’)
#     done
# }
# complete -F _..2 -o nospace -S / ..2
