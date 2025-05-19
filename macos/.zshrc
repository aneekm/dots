# ZSH configuration

# Prompt configuration
export PS1="%F{cyan}%n%f %F{37}%1~%f %# "

# Tool configuration
export PATH=/opt/homebrew/bin:$PATH
export PATH=$HOME/.cargo/bin:$PATH

export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && . "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && . "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

# QoL aliases
alias ls='ls -G'
alias la='ls -G -a'
alias ll='ls -G -l'
alias lla='ls -G -l -a'
alias zshrc='vim ~/.zshrc'
alias nzsh='source ~/.zshrc'
alias vimrc='vim ~/.vimrc'
alias sshc='vim .ssh/config'
alias bel='tput bel'

# Git aliases
alias gl='git log --all --decorate --oneline --graph'
alias gs='git status'