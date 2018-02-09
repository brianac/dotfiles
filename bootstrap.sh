#!/usr/bin/env bash

# Install Xcode command line tools
echo "Installing Xcode Command Line Tools..."
xcode-select --install

# Install Homebrew
echo "Installing Homebrew..."
if [ -z `command -v brew` ]; then
  /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)";
fi;

# Install Homebrew applications and packages
echo "Installing Homebrew Packages..."
`pwd`/brew.sh

# Terminal Setup
echo "Setting default shell to zsh..."
chsh -s $(which zsh)

# Dotfiles
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

# Macros
echo "Applying macros..."
`pwd`/macros.sh
