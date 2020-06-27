# QoL aliases
alias clear='clear -x'
alias clr='\clear'
alias file='explorer.exe'
alias untar='tar -xzvf'

# WSL-specific aliases
alias docs='cd /mnt/c/Users/aneek/Documents/'

# Config file aliases
alias vimrc='vim ~/.vim/vimrc'
alias bashrc='vim ~/.bashrc'
alias basha='vim ~/.bash_aliases'

# CLI aliases
alias lolcat='lolcat -h 0.4 -v 0.8'

# Git aliases
alias gl='git log --all --decorate --oneline --graph'

# Python aliases
alias python='python3'
alias pip='pip3'
alias ve='python3 -m venv ./venv'
alias va='source ./venv/bin/activate'

# Functions
weather () {
    local arg loc curr size
    [ "$(tput cols)" -lt 125 ] && size='n'
    for arg in "$@"; do
        case $arg in
            -h) echo "Usage: weather [-c] [location]"; return 0;;
            -c) curr="0"; shift;;
            -*) echo "Invalid flag: $arg. See weather -h.";return 1;;
            *) loc="$arg"; shift;;
        esac
    done
    curl "wttr.in/${loc}?${curr}${size}F"
}

cpdots () {
    cp ~/.bashrc ~/dots/ubuntu/
    cp ~/.bash_aliases ~/dots/ubuntu/
    cp -r ~/.vim/vimrc ~/dots/ubuntu/.vim/
}
