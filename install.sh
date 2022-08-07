#! /bin/sh

stow git
stow tmux
stow vim
stow X
stow zsh

# Awesome needs to be symlinked to ~/.config/awesome
if [ "$(uname)" != "Darwin" ]; then
  mkdir -p ~/.config/awesome
  stow -t ~/.config/awesome awesome

  mkdir -p ~/.config/rofi
  stow -t ~/.config/rofi rofi
fi
