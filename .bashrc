#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias f="fish"

PS1='[\u@\h \W]\$ '
. "$HOME/.cargo/env"
