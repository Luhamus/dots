# ~/.bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export PS1="\W "
export PATH="$PATH:/home/rasmus/.local/scripts"
export EDITOR="vim"

# Aliases
alias ls='ls --color=auto'
alias grep="grep -i --color"
alias c="clear"
alias sxiv="sxiv -tb"
alias iv="sxiv -tb ~/pix"
alias update="sudo pacman -Sy archlinux-keyring && sudo pacman -Su"
alias mute="amixer sset Master mute" # amixer sset Master {toggle|+%5}
alias nett="nmcli device wifi list"
# nmcli device wifi connect SSID or BSSID password /password/

alias server="ssh root@luhamus.com"


# While opeing bash
quotes
