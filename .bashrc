#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'

export LC_CTYPE="POSIX"
export LC_MESSAGES="POSIX"

if test -t 1; then
    exec fish
fi

PS1='[\u@\h \W]\$ '
. "$HOME/.cargo/env"
