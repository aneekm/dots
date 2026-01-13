# ZSH configuration

# Prompt configuration
export PS1="🙈 %F{green}%n%f %F{37}%2~%f %F{203}%(#.#.->)%f "

# Local bin
export PATH="$PATH:/home/aneek/.local/bin"

# Set up fzf key bindings and fuzzy completion
source <(fzf --zsh)

# QoL aliases
alias ls='ls -G'
alias la='ls -G -a'
alias ll='ls -G -l'
alias lla='ls -G -l -a'
alias zshrc='vim ~/.zshrc'
alias nzsh='source ~/.zshrc'
alias vimrc='vim ~/.vimrc'
alias sshc='vim ~/.ssh/config'
alias bel='tput bel'

# Git aliases
alias gl='git log --all --decorate --oneline --graph'
alias gs='git status'

# AI aliases
google() {
    gemini -p "Search google for <query>$1</query> and summarize results"
}


