#!/usr/bin/env bash

# install xcode commandline tools
xcode-select --install

# Install Homebrew
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)";

# install brew programs
`pwd`/brew.sh

# set zsh to default shell
chsh -s $(which zsh)

# symlink dotfiles
ln -s ./symlink/zshrc ~/.zshrc
ln -s ./symlink/zshrc.custom ~/.zshrc.custom
ln -s ./symlink/zshrc.work ~/.zshrc.work
ln -s ./symlink/vimrc.local ~/.vimrc.local
ln -s ./symlink/gitignore ~/.gitignore
ln -s ./symlink/gitconfig ~/.gitconfig
