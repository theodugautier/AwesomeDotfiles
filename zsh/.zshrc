export ZSH="/home/theodugautier/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(git history zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# Frum ruby version manager for testing
export PATH="$PATH:$HOME/.cargo/bin"
eval "$(frum init)"

# nvim configuration
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

alias vim="nvim"
alias vi="nvim"
alias ls="lsd -l"

# tmux config
export TERM="xterm-256color"
alias tmux="tmux -2"

export JAVA_HOME="/usr/lib/jvm/java-11-openjdk-amd64"
