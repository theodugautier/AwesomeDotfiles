export ZSH="/home/theodugautier/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(git history zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

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

export PATH="${HOME}/.config/lsp/lua-language-server/bin:${PATH}"

# rust
export PATH="$PATH:$HOME/.cargo/bin"

# ruby version switcher
source /usr/local/share/chruby/chruby.sh
source /usr/local/share/chruby/auto.sh

# Flutter
export CHROME_EXECUTABLE=/snap/bin/chromium
export PATH="$PATH:/home/theodugautier/snap/flutter/common/flutter/bin"
