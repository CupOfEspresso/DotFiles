# .______        ___           _______. __    __  .______        ______ 
# |   _  \      /   \         /       ||  |  |  | |   _  \      /      |
# |  |_)  |    /  ^  \       |   (----`|  |__|  | |  |_)  |    |  ,----'
# |   _  <    /  /_\  \       \   \    |   __   | |      /     |  |     
# |  |_)  |  /  _____  \  .----)   |   |  |  |  | |  |\  \----.|  `----.
# |______/  /__/     \__\ |_______/    |__|  |__| | _| `._____| \______|
                                                                      

[ -z "$PS1" ] && return

printf '\n' 
neofetch

stty -ixon 
shopt -s autocd

blu=$(tput setaf 14)
wht=$(tput setaf 255)
# export PS1="\[\e[0;36m\]\u \[\e[0;37m\]on \[\e[0;36m\]\h \[\e[0;37m\]at \[\e[0;36m\]\t \[\e[0;37m\]in \[\e[0;37m\][\[\e[0;36m\]\w\[\e[0;37m\]]\[\e[0;37m\]\\n\[\e[0;37m\]---> \[\e[0m\]"

export PS1="\[\033[00;34m\]\u\[\033[01;33m\]@\[\033[00m\]\[\033[01;35m\]\h\[\033[00m\]\[\033[01;33m\] \w \[\033[00m\]\[\033[01;36m\]$ \[\033[00m\]"
bind 'set show-all-if-ambiguous on'
bind 'TAB:menu-complete'

# ALIASES
# I have a script for my pacman alias
alias y="yay"
alias clear="clear && printf '\n' && neofetch"
alias cls="\clear"
alias r="ranger"
alias svim="sudo nvim"
alias sv="sudo nvim"
alias vim="nvim"
alias v="nvim"
alias s="sudo"
alias cd..="cd .."
alias ls="ls --color=auto"
alias la="ls -lAh --color=auto"
alias grep="grep --color=auto"
alias tb="nc termbin.com 9999"
alias sel="xclip -o | nc termbin.com 9999 | xsel -b"
alias wttr="curl nl.wttr.in/Doetinchem?2Q"
alias moon="curl nl.wttr.in/moon"
alias clock="tty-clock -cs -C 4"

# Configs
alias vimrc="vim ~/.vimrc"
alias bashrc="vim ~/.bashrc"
alias i3="vim ~/.config/i3/config"
alias term="vim ~/.config/alacritty/alacritty.yml"
alias config="vim ~/.config"
alias pbcfg="vim ~/.config/polybar/config"
#alias git="cd $HOME/Git; git $1"
