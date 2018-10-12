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
wht=$(tput setaf 255);
export PS1="\[${blu}\]\h\[${wht}\] at \[${blu}\]\A \[${wht}\]in \[${wht}\][\[${blu}\]\w\[${wht}\]]\n\[${blu}\]\u\[${wht}\]→\[${end}\] "

# other settings
bind 'set show-all-if-ambiguous on'
bind 'TAB:menu-complete'

# ALIASES
# For arch based systems
alias p="sudo pacman"
alias y="yay"

# For Deb based systems
# alias a="apt"
# alias ag="apt-get"

# General 
alias clear="clear && printf '\n' && neofetch"
alias cls="\clear"
alias r="ranger"
alias svim="sudo nvim"
alias vim="nvim"
alias s="sudo"
alias cd..="cd .."
alias ls="ls --color=auto"
alias la="ls -lAh --color=auto"
alias grep="grep --color=auto"
alias ncat="tb"  
alias sel="xclip -o | tb"
alias wttr="curl nl.wttr.in/Doetinchem?2Q"

# Configs
alias vimrc="vim ~/.vimrc"
alias bashrc="vim ~/.bashrc"
alias i3="vim ~/.config/i3/config"
alias term="vim ~/config/alacritty/config"
