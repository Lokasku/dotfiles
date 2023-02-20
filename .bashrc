#
# ~/.bashrc
#

# get current active shell
term="$(cat /proc/$PPID/comm)"

# Set transparency
# if [[ $term="st" ]]; then
# fi

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias f="fish"

export WGPU_BACKEND=gl

PS1='[\u@\h \W]\$ '
. "$HOME/.cargo/env"
