#!/usr/bin/env sh

xcode-select --install

echo "Install brew ... this will prompt for sudo"
/usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"

#
brew update && brew upgrade

# Add the following in your .bashrc
# . ~/.bashrc_brew
> ~/.bashrc_brew

# Basic

brew install wget     \
             openssl  \
             readline \
             curl

# Heroku

brew install heroku

# Ruby
brew install rbenv
brew install ruby-build

echo 'eval "$(rbenv init -)"' >> ~/.bashrc_brew

# Python
brew install pyenv
echo 'eval "$(pyenv init -)"' >> ~/.bashrc_brew

# go
brew install goenv
echo 'eval "$(goenv init -)"' >> ~/.bash_brew
