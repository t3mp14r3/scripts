#
# ~/.bashrc
#

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias ls='ls --color=auto'
PS1='[\u@\h \W]\$ '

source /etc/profile

PATH=$PATH+':/home/tempy/.scripts/blocks'
export PATH

set -o vi
