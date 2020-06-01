#!/usr/bin/env sh

BREWCMD=`which brew`

echo "Install brew ... this will prompt for sudo"
/bin/bash -c "$(curl -fsSL https://raw.githubusercontent.com/Homebrew/install/master/install.sh)"

echo "Turn off brew analytics"
brew analytics off

brew update > /dev/null
brew upgrade > /dev/null

echo 'Create your .brewrc'

cat ./brewrc >> ~/.brewrc

brew bundle
