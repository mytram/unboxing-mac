#!/bin/sh

echo 'eval "$(rbenv init -)"' >> ~/.brewrc

COMMAND='rbenv'
VERSION=`${COMMAND} install -l | grep -v '[a-z]' | tail -n 1`

${COMMAND} install -f ${VERSION}
${COMMAND} versions

${COMMAND} global ${VERSION}
${COMMAND} rehash

gem install bundler
gem install rails
gem install cowsay
gem install ruby_parser # User for feature-mode in emacs
gem install pry
gem install rubocop
gem install jekyll

${COMMAND} rehash
