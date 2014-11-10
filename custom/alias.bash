alias plz='sudo "$BASH" -c "$(history -p !!)"'
alias mosh420='mosh --ssh="ssh -p 420"'
alias gitrm='git rm $(git ls-files --deleted)'
..()
{
    cd ../$@
}
..2()
{
    cd ../../$@
}

..3()
{
    cd ../../../$@
}
..4()
{
    cd ../../../../$@
}
..5()
{
    cd ../../../../../$@
}

_..()
{
    local cur=../${COMP_WORDS[COMP_CWORD]}
    COMPREPLY=( $(compgen -d — $cur) )
    local i=${#COMPREPLY[*]}
    while [ $((--i)) -ge 0 ]; do
        COMPREPLY[$i]=$(echo ${COMPREPLY[$i]} | sed -r ‘s/(\.\.\/)*//’)
    done
}
complete -F _.. -o nospace -S / ..

_..2()
{
    local cur=../../${COMP_WORDS[COMP_CWORD]}
    COMPREPLY=( $(compgen -d — $cur) )
    local i=${#COMPREPLY[*]}
    while [ $((--i)) -ge 0 ]; do
        COMPREPLY[$i]=$(echo ${COMPREPLY[$i]} | sed -r ‘s/(\.\.\/)*//’)
    done
}
complete -F _..2 -o nospace -S / ..2
