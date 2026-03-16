#!/bin/bash

# Variables for the file paths
DOTFILES=~/dotfiles/homefiles
ALIASES=~/.bash_aliases

# Backup for a .bash_aliases file if there is one found
# In case the user wants to keep their old file
if [ -f "$ALIASES" ]; then

	echo ".bash_aliases was found. Backing up."
	mv ~/.bash_aliases ~/.bash_aliases.backup
	echo "Old .bash_aliases backed up as .bash_aliases.backup."
fi

# Creates a symbolic link from the dotfiles .bash_aliases
ln -s $DOTFILES/.bash_aliases ~/.bash_aliases

# Allows aliases to load for bashrc
if ! grep -q ".bash_aliases" ~/.bashrc; then
	echo "source ~/.bash_aliases" >> ~/.bashrc
fi

# Loads aliases
source ~/.bash_aliases

echo "Done."
