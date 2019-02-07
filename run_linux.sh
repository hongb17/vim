#!/bin/sh
mkdir bundle
mkdir undo
sudo apt install cmake python3-dev
git clone https://github.com/gmarik/Vundle.vim.git ~/.vim/bundle/Vundle.vim
cp .vimrc ~/
vim README.md
python3 ./bundle/YouCompleteMe/install.py --clang-completer
