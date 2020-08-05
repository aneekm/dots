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
alias gs='git status'

# Python aliases
alias python='python3'
alias pip='pip3'
alias ve='python3 -m venv ./venv'
alias va='source ./venv/bin/activate'

# Rust aliases
alias cr='cargo run'
alias cb='cargo build'

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

todots () {
    cp ~/.bashrc ~/dots/ubuntu/
    cp ~/.bash_aliases ~/dots/ubuntu/
    cp ~/.gitconfig ~/dots/ubuntu/
    cp ~/.vim/vimrc ~/dots/ubuntu/.vim/
}

fromdots () {
    cp ~/dots/ubuntu/.bashrc ~
    cp ~/dots/ubuntu/.bash_aliases ~
    cp ~/dots/ubuntu/.gitconfig ~
    cp ~/dots/ubuntu/.vim/vimrc ~/.vim/
}

