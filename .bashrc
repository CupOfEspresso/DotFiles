# .______        ___           _______. __    __  .______        ______ 
# |   _  \      /   \         /       ||  |  |  | |   _  \      /      |
# |  |_)  |    /  ^  \       |   (----`|  |__|  | |  |_)  |    |  ,----'
# |   _  <    /  /_\  \       \   \    |   __   | |      /     |  |     
# |  |_)  |  /  _____  \  .----)   |   |  |  |  | |  |\  \----.|  `----.
# |______/  /__/     \__\ |_______/    |__|  |__| | _| `._____| \______|
                                                                      


#If not running interactively, don't do anything
[ -z "$PS1" ] && return

# Colors

#ylw='\[\e[38;5;226m\]'
#org='\[\033[38;5;208m\]'
#red='\[\033[38;5;160m\]'
#blu='\[\033[38;5;39m\]'
#lblu='\[\033[38;5;51m\]'
#dgrn='\[\033[32m\]'
#grn='\[\033[38;5;40m\]'
#lgrn='\[\033[38;5;46m\]'
#cya='\[\033[38;5;49m\]'
#gry='\[\e[38;5;242m\]'
#bck='\[\033[38;5;0m\]'
#wht='\[\033[32;42;0m\]'
#end='\[\e[m\]'
lgrn=$(tput setaf 84);
pur=$(tput setaf 183);
wht=$(tput setaf 255);
# Prompt
export PS1="\[${pur}\]\h\[${wht}\] at \[${pur}\]\A \[${wht}\]in \[${wht}\][\[${pur}\]\w\[${wht}\]]\n\[${pur}\]\u\[${wht}\]→\[${end}\] "

# User Info

export USERNAME="Youri Claes"
export NICKNAME="CupOfCoffee"
export BROWSER="firefox"
export MAIL="mutt"
export EDITOR="vim"

# other settings
bind 'set show-all-if-ambiguous on'
bind 'TAB:menu-complete'

# Functions
# <From https://github.com/xvoland/Extract/blob/master/extract.sh>
function extract {
  if [ -z "$1" ]; then
    # display usage if no parameters given
    echo "Usage: extract <path/file_name>.<zip|rar|bz2|gz|tar|tbz2|tgz|Z|7z|xz|ex|tar.bz2|tar.gz|tar.xz>"
 else
    if [ -f "$1" ] ; then
        local nameInLowerCase=`echo "$1" | awk '{print tolower($0)}'`
        case "$nameInLowerCase" in
          *.tar.bz2)   tar xvjf ./"$1"    ;;
          *.tar.gz)    tar xvzf ./"$1"    ;;
          *.tar.xz)    tar xvJf ./"$1"    ;;
          *.lzma)      unlzma ./"$1"      ;;
          *.bz2)       bunzip2 ./"$1"     ;;
          *.rar)       unrar x -ad ./"$1" ;;
          *.gz)        gunzip ./"$1"      ;;
          *.tar)       tar xvf ./"$1"     ;;
          *.tbz2)      tar xvjf ./"$1"    ;;
          *.tgz)       tar xvzf ./"$1"    ;;
          *.zip)       unzip ./"$1"       ;;
          *.Z)         uncompress ./"$1"  ;;
          *.7z)        7z x ./"$1"        ;;
          *.xz)        unxz ./"$1"        ;;
          *.exe)       cabextract ./"$1"  ;;
          *)           echo "extract: '$1' - unknown archive method" ;;
        esac
    else
        echo "'$1' - file does not exist"
    fi
fi
}
# </From>
# <From Manjaro's .bashrc>
colors() {
	local fgc bgc vals seq0

	printf "Color escapes are %s\n" '\e[${value};...;${value}m'
	printf "Values 30..37 are \e[33mforeground colors\e[m\n"
	printf "Values 40..47 are \e[43mbackground colors\e[m\n"
	printf "Value  1 gives a  \e[1mbold-faced look\e[m\n\n"

	# foreground colors
	for fgc in {30..37}; do
		# background colors
		for bgc in {40..47}; do
			fgc=${fgc#37} # white
			bgc=${bgc#40} # black

			vals="${fgc:+$fgc;}${bgc}"
			vals=${vals%%;}

			seq0="${vals:+\e[${vals}m}"
			printf "  %-9s" "${seq0:-(default)}"
			printf " ${seq0}TEXT\e[m"
			printf " \e[${vals:+${vals+$vals;}}1mBOLD\e[m"
		done
		echo; echo
	done
}
# </From>
# <From batch in Freenode>
Snow () {
clear; while :;do echo $LINES $COLUMNS $(($RANDOM%$COLUMNS)) $(printf "\u2744\n");sleep 0.1;done|gawk '{a[$3]=0;for(x in a) {o=a[x];a[x]=a[x]+1;printf "\033[%s;%sH ",o,x;printf "\033[%s;%sH%s \033[0;0H",a[x],x,$4;}}'
}
# </From>
# <From http://boredzo.org/blog/archives/2016-08-15>
man() {
env \
LESS_TERMCAP_mb=$(printf "\e[1;36m") \
LESS_TERMCAP_md=$(printf "\e[1;36m") \
LESS_TERMCAP_me=$(printf "\e[0m") \
LESS_TERMCAP_se=$(printf "\e[0m") \
LESS_TERMCAP_so=$(printf "\e[1;44;33m") \
LESS_TERMCAP_ue=$(printf "\e[0m") \
LESS_TERMCAP_us=$(printf "\e[1;34m") \
man "$@"
}
# </From>

sprung() { curl -F "sprunge=<-" http://sprunge.us <"$1" ;}

# Aliases

# For arch based systems
alias S="sudo pacman -S"
alias Y="yaourt"
alias R="sudo pacman -R"
alias Rdd="sudo pacman -Rdd"
alias Rsn="sudo pacman -Rsn"
alias Q="sudo pacman -Q"
alias Qi="sudo pacman -Qi"
alias Qent="sudo pacman -Qent"
alias Ss="sudo pacman -Ss"
alias Sy="sudo pacman -Sy"
alias Syu="sudo pacman -Syu"
alias Syyu="sudo pacman -Syyu"

# For Deb based systems
#alias install="sudo apt-get install"
#alias remove="sudo apt-get purge && sudo apt autoremove"
#alias update="sudo apt-get update"
#alias upgrade="sudo apt-get upgrade"
#alias search="sudo apt search"
#alias plist="sudo apt list"

alias clear="clear && printf '\n' && neofetch --ascii_colors 2 2 --colors 2 4 4 4 2 4 && printf '\n' "
alias cls="\clear"
alias root="sudo su -"
alias sd="sudo"
alias DIHI="ping -c 6 8.8.8.8"
alias docum="cd ~/Documents && la"
alias downl="cd ~/Downloads && la"
alias drop="cd ~/Dropbox && la"
alias music="cd ~/Music && la"
alias pic="cd ~/Pictures && la"
alias pub="cd ~/Public && la"
alias templ="cd ~/Templates && la"
alias vid="cd ~/Videos"
alias cd..="cd .."
alias ls="ls --color=auto"
alias ll="ls -lh --color=auto"
alias l.='ls -dh .* --color=auto'
alias la="ls -lAh --color=auto"
alias vimrc="vim ~/.vimrc"
alias bashrc="vim ~/.bashrc"
alias bash="cd ~/Documents/code/bash && ls --color=auto"
alias i3="vim ~/.config/i3/config"
alias work="cd ~/Documents/code && la"
alias svim="sudo vim"
alias xres="vim ~/.Xresources"
