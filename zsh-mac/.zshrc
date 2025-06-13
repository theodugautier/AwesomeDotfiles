export ZSH="/Users/theo/.oh-my-zsh"

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
alias lg="lazygit"

export OBJC_DISABLE_INITIALIZE_FORK_SAFETY=YES
export PGGSSENCMODE=disable

# chruby installation
source $HOMEBREW_PREFIX/opt/chruby/share/chruby/chruby.sh
source $HOMEBREW_PREFIX/opt/chruby/share/chruby/auto.sh

export GPG_TTY=$(tty)

export RUBY_YJIT_ENABLE=1

[ -f ~/.fzf.zsh ] && source ~/.fzf.zsh

export PATH="$HOMEBREW_PREFIX/opt/postgresql@15/bin:$PATH"


export PATH="$HOME/.yarn/bin:$HOME/.config/yarn/global/node_modules/.bin:$PATH"
