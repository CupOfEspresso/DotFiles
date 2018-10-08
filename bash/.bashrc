# .______        ___           _______. __    __  .______        ______ 
# |   _  \      /   \         /       ||  |  |  | |   _  \      /      |
# |  |_)  |    /  ^  \       |   (----`|  |__|  | |  |_)  |    |  ,----'
# |   _  <    /  /_\  \       \   \    |   __   | |      /     |  |     
# |  |_)  |  /  _____  \  .----)   |   |  |  |  | |  |\  \----.|  `----.
# |______/  /__/     \__\ |_______/    |__|  |__| | _| `._____| \______|
                                                                      

[ -z "$PS1" ] && return
stty -ixon 
shopt -s autocd

blu=$(tput setaf 030)
wht=$(tput setaf 255);
export PS1="\[${blu}\]\h\[${wht}\] at \[${blu}\]\A \[${wht}\]in \[${wht}\][\[${blu}\]\w\[${wht}\]]\n\[${blu}\]\u\[${wht}\]→\[${end}\] "

# other settings
bind 'set show-all-if-ambiguous on'
bind 'TAB:menu-complete'

# ALIASES
# For arch based systems
alias P="sudo pacman"
alias A="aurman"

# For Deb based systems
# alias A="apt"
# alias Ag="apt-get"

# General 
alias clear="clear && printf '\n' && neofetch --ascii_colors 2 2 --colors 2 4 4 4 2 4 && printf '\n' "
alias cls="\clear"
alias r="ranger"
alias v="vim"
alias sv="sudo vim"
alias s="sudo"
alias cd..="cd .."
alias ls="ls --color=auto"
alias la="ls -lAh --color=auto"
alias grep="grep --color=auto"

# Configs
alias vimrc="vim ~/.vimrc"
alias bashrc="vim ~/.bashrc"
alias i3="vim ~/.config/i3/config"
alias term="vim ~/config/alacritty/config"
