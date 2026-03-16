# Dotfiles

This repository is made so I have starter files for Linux systems.

## Vim and Vundle

The plugins include [Vim-Colored-Solarized](https://github.com/altercation/vim-colors-solarized) for the color scheme, and [Vim Airline](https://github.com/vim-airline/vim-airline) for the improver, both creating a more detailed experiance with better colors.

### How to install

Clone this repository by running the following command in a Linux Terminal.

```
git clone https://github.com/colmor05/dotfiles.git
```

Then run the following command to install the `.vimrc` file and needed files.

```
bash install.sh
```
**That's literally it** 

At of the time of writing this, `install.sh` is capable of installing Vundle and `.vimrc` as well as applying the contents of `.vimrc` to Vim.

## Stuff to add later

### Note if a professor is seeing this

This section is only for ideas I have for future use that may not what assignments are asking for. I will not add these features until after the class is over to make things less confusing during grading. 

Thank you for understanding.

---

### Using Vim instead of Nano for Git commits

Make or add a line to the `vim-installer.sh` script to include the following command to be executed

```
git config --global core.editor "vim"

export GIT_EDITOR=vim
```

This allows for the git commit messages to be made using Vim instead of Nano.

