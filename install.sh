#! /bin/sh

stow --target=$HOME git
stow --target=$HOME tmux
stow --target=$HOME X
stow --target=$HOME zsh

# Awesome, rofi and neovim needs to be symlinked to ~/.config
mkdir -p ~/.config/nvim
stow -t ~/.config/nvim vim

if [ "$(uname)" != "Darwin" ]; then
  mkdir -p ~/.config/awesome
  stow -t ~/.config/awesome awesome

  mkdir -p ~/.config/rofi
  stow -t ~/.config/rofi rofi
fi
