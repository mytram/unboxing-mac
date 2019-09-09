#!/usr/bin/env sh

xcode-select --install

BREWCMD=`which brew`

if [ -e "${BREWCMD}" ]
then
    brew update && brew upgrade
else
    echo "Install brew ... this will prompt for sudo"
    /usr/bin/ruby -e "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install)"
fi

echo 'Add the following in your .bashrc'

if [ -e "~/.bashrc_brew" ]
then
    echo '. ~/.bashrc_brew'
    >> ~/.bashrc_brew
else
    > ~/.bashrc_brew
fi

# Basic
brew install wget     \
             openssl  \
             readline \
             curl

# Heroku
brew tap heroku/brew && brew install heroku
