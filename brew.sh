#!/usr/bin/env bash

# Make sure we’re using the latest Homebrew.
brew update

# install binaries:
brew install zsh \
             git \
             grep \
             ripgrep \
             nvm \
             rbenv \
             node \
             vim --with-override-system-vi

# install applications
brew cask install spectacle \
                  caffeine \
                  google-chrome \
                  iterm2 \
                  slack \
                  visual-studio-code

# Remove outdated versions from the cellar.
brew cleanup
