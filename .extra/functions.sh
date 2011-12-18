function purge {
    find . -name "$1" -exec rm {} \;
}

function pacman {
    case $1 in
        -S | -S[^sih]* | -R* | -U*)
            /usr/bin/sudo /usr/bin/pacman-color "$@" ;;
        *)  
            /usr/bin/pacman-color "$@" ;;
    esac
}

if [[ -n `which tmux` ]]; then
    function s {
        if [[ -z $1 ]]; then
            tmux -2 ls
            return 0
        fi
        tmux -2 attach -d -t $1
        if [[ $? -ne 0 ]]; then
            echo "creating a new session"
            tmux -2 new -s $1
        fi
    }
else
    alias s='screen -dRU'
    alias ss='screen -ls'
fi
