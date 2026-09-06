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
bash vim-install.sh
```
**That's literally it** 

At of the time of writing this, `vim-install.sh` is capable of installing Vundle and `.vimrc` as well as applying the contents of `.vimrc` to Vim.

---

## [Homefiles](https://github.com/colmor05/dotfiles/tree/main/homefiles)

This contains an installer for `.bash_aliases` to make commands shorter and easier.

---

## [Sys-Installs](https://github.com/colmor05/dotfiles/tree/main/sys-installs)

This contains an installer to download [Singularity CE 4.3.0](https://github.com/sylabs/singularity/discussions/3603)

---

## Stuff to add later

### Make `.zshrc` and `.zsh_aliases` Installer (Issue)

Either make an installer or add to `install-aliases.sh` to check for shell version to download `.zshrc` and `.zsh_aliases`.
