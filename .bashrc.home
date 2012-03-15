# ~/.bashrc: executed by bash(1) for non-login shells.

# helper functions
source ~/.extra/utils.bash

export LANG='en_US.UTF-8'

# exports =============================================================
export EDITOR=vim
export PYTHONSTARTUP=~/.pythonrc.py

if [ $(which cope_path) ]; then
    export PATH="$(cope_path):$PATH"
fi
export PATH="$PATH:/usr/local/bin:/usr/bin/vendor_perl"

if [ -d $HOME/.bin ]; then
    export PATH=$HOME/.bin:$HOME/.bin/tools:$PATH
fi

if [ -d $HOME/local ]; then
    export LOCAL="$HOME/local"
    #export LD_LIBRARY_PATH=$LOCAL/lib:$LD_LIBRARY_PATH
    #export CFLAGS="-I${LOCAL}/include $CFLAGS"
    #export LDFLAGS="-L${LOCAL}/lib $LDFLAGS"
    export PATH=$LOCAL/bin:$LOCAL/sbin:$PATH
fi

if [ -d $HOME/.env ]; then
    export WORKON_HOME=~/.env
    source_if_exists /usr/local/bin/virtualenvwrapper.sh
    source_if_exists /usr/bin/virtualenvwrapper.sh
    source_if_exists $LOCAL/bin/virtualenvwrapper.sh
fi

if [ -d /usr/local/mysql/bin ]; then
    export PATH="$PATH:/usr/local/mysql/bin"
fi

# aliases =============================================================
if [[ -x "`which dircolors`" ]]; then
    eval "`dircolors -b`"
    alias ls='ls --color=auto'

    alias grep='grep --color=auto'
    alias fgrep='fgrep --color=auto'
    alias egrep='egrep --color=auto'
fi

alias ll='ls -l'
alias la='ls -A'
alias l='ls -CF'

alias v='vim'
alias crontab="VIM_CRONTAB=true crontab"

alias pmo='pastebinit.py -u stas '
alias mkve='mkvirtualenv --no-site-packages'

alias apache='sudo /etc/rc.d/httpd '
alias mysqls='sudo /etc/rc.d/mysqld '

alias wi='wicd-curses'


# additional scripts =================================================
source ~/.extra/functions.sh
source ~/.extra/bash_completion_tmux.sh
source ~/.extra/git-completion.bash
source ~/.extra/git-flow-completion.bash
source ~/.extra/npm-completion.sh

# extras =============================================================
complete -cf sudo

# git completion =====================================================
GIT_PS1_SHOWDIRTYSTATE=1
GIT_PS1_SHOWSTASHSTATE=1
GIT_PS1_SHOWUNTRACKEDFILES=1
GIT_PS1_SHOWUPSTREAM="auto"
