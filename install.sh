#!/bin/bash

# Downloads vim if vim is not detected
if [ ! -d /usr/bin/vim ]; then
	echo "/usr/bin/vim not found."
	echo "Downloading vim"
	sudo apt install vim -y
fi

# Clones the repo for Vundle if it is not detected
if [ ! -d "$HOME/.vim" ]; then
	echo "Downloading Vundle"
	git clone https://github.com/VundleVim/Vundle.vim.git ~/.vim/bundle/Vundle.vim
fi

# Copies .vimrc from vim-config to home if .vimrc is not in the home directory
if [ ! -f "$HOME/.vimrc" ]; then
	cp ./vim-config/.vimrc $HOME/.vimrc
fi

# Installs the plugins seen at the end of the file
echo "Applying Plugins"
vim +PluginInstall +qall
echo "Done"