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
alias cal="cal -m"
alias sxiv="sxiv -tb"
alias iv="sxiv -tb ~/pix"
alias update="sudo pacman -Sy archlinux-keyring && sudo pacman -Su"
alias mute="amixer sset Master mute" # amixer sset Master {toggle|+%5}
alias nett="nmcli device wifi list"
# nmcli device wifi connect SSID or BSSID password /password/

alias server="ssh root@luhamus.com"
alias sesy="rsync -auP ~/server/site/public/ root@luhamus.com:/var/www/site"
alias digisync="rsync -aP --delete --exclude .git/ /home/rasmus/code/digirannak/ root@luhamus.com:/var/www/site/digirannak"

# Stupid Zulip
alias zuldl="cd /home/rasmus/snap/zulip/43/Downloads"

# While opeing bash
#quotes
#echo Remember
