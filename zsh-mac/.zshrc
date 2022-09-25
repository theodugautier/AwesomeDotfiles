export ZSH="/home/theodugautier/.oh-my-zsh"

ZSH_THEME="robbyrussell"

plugins=(git history zsh-autosuggestions)

source $ZSH/oh-my-zsh.sh

# nvm configuration
export NVM_DIR="$HOME/.nvm"
[ -s "$NVM_DIR/nvm.sh" ] && \. "$NVM_DIR/nvm.sh"  # This loads nvm
[ -s "$NVM_DIR/bash_completion" ] && \. "$NVM_DIR/bash_completion"  # This loads nvm bash_completion

alias vim="nvim"
alias vi="nvim"
alias ls="lsd -l"

# tmux config
export TERM="xterm-256color"
alias tmux="tmux -2"

# chruby installation
source $HOMEBREW_PREFIX/opt/chruby/share/chruby/chruby.sh
source $HOMEBREW_PREFIX/opt/chruby/share/chruby/auto.sh

export GPG_TTY=$(tty)

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh
