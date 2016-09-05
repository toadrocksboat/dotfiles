export PATH=$PATH:~/bin/
export EDITOR=leafpad
export TERMINAL=lxterminal
export BROWSER=firefox
# Gtk themes 
export GTK2_RC_FILES="$HOME/.gtkrc-2.0"

# bash prompt
#export PS1="\\$ "
function nonzero_return() {
    RETVAL=$?
        [ $RETVAL -ne 0 ] && echo "$RETVAL"
    }

export PS1="\A \u@\h:\W \`nonzero_return\` "

# aliases
alias ls='ls --color=auto'
alias la='ls -la --color=auto'
alias shutd='sudo shutdown now'

alias yolo='sudo pacman -Syyu'

# qfind - used to quickly find files that contain a string in a directory
qfind () {
    find . -exec grep -l $1 {} \;
    return 0
}

# Enable tab-completion with sudo
complete -cf sudo
