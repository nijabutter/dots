[[ $- != *i* ]] && return

PS1='[\u@\h \W\$]'
export LC_ALL="en_GB.UTF-8"
pulseaudio -D
setxkbmap gb
