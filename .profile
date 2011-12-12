# ~/.profile: executed by the command interpreter for login shells.

source $HOME/.bashrc
#export PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;35m\]\w\[\033[00;33m\]$(__git_ps1 " (%s)")\[\033[00m\]\$ '
export PS1='\[\033[01;32m\]\u@\h\[\033[00m\]:\[\033[01;35m\]\w\[\033[00m\]\$ '

eval `keychain --eval --agents ssh --nogui -Q -q id_dsa`
