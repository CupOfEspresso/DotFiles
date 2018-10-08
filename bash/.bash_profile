export PATH="$HOME/.cargo/bin:$PATH"
export USERNAME="Youri Claes"
export NICKNAME="CupOfCoffee"
export BROWSER="firefox"
export MAIL="mutt"
export EDITOR="vim"
export PATH="$HOME/Scripts:$PATH"
export TERM="xterm-256color"
export LESS_TERMCAP_mb=$'\E[1;31m'    
export LESS_TERMCAP_md=$'\E[1;36m'     
export LESS_TERMCAP_me=$'\E[0m'       
export LESS_TERMCAP_so=$'\E[01;44;33m' 
export LESS_TERMCAP_se=$'\E[0m'       
export LESS_TERMCAP_us=$'\E[1;32m'    
export LESS_TERMCAP_ue=$'\E[0m'        
export GROFF_NO_SGR=1                 

[[ -f ~/.bashrc ]] && . ~/.bashrc

# start x server if not active
if [ "$(tty)" = "/dev/tty1" ]; then
    pgrep -x i3 || exec startx
fi

