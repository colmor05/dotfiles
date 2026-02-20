#!/bin/bash

# Clones the repo for Vundle
git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim

# Copies .vimrc from vim-config to home if .vimrc is not in the home directory
if [ $HOME != $HOME/.vimrc ]; then
	cp ./vim-config/.vimrc $HOME/.vimrc
fi
