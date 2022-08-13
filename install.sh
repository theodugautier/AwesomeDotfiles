#! /bin/sh

stow --target=$HOME git
stow --target=$HOME tmux
stow --target=$HOME zsh

# neovim needs to be symlinked to ~/.config
mkdir -p ~/.config/nvim
stow -t ~/.config/nvim vim

