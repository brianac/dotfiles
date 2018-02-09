#!/usr/bin/env bash

# install xcode commandline tools
echo "Installing Xcode Command Line Tools..."
xcode-select --install

# Install Homebrew
echo "Installing Homebrew..."
if [ -z `command -v brew` ]; then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)";
fi;

# install brew programs
echo "Installing Homebrew Packages..."
#`pwd`/brew.sh

# set zsh to default shell
echo "Setting default shell to zsh..."
#chsh -s $(which zsh)

# symlink dotfiles
echo "Symlinking dotfiles..."
rm ~/.zshrc
ln -s `pwd`/symlink/zshrc ~/.zshrc
rm ~/.zshrc.custom
ln -s `pwd`/symlink/zshrc.custom ~/.zshrc.custom
rm ~/.zshrc.work
ln -s `pwd`/symlink/zshrc.work ~/.zshrc.work
rm ~/.vimrc.local
ln -s `pwd`/symlink/vimrc.local ~/.vimrc.local
rm ~/.gitignore
ln -s `pwd`/symlink/gitignore ~/.gitignore
rm ~/.gitconfig
ln -s `pwd`/symlink/gitconfig ~/.gitconfig
