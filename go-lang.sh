#!/bin/sh

brew install goenv
echo 'eval "$(goenv init -)"' >> ~/.brewrc

COMMAND='goenv'

VERSION=`${COMMAND} install -l | grep -v '[a-z]' | tail -n 1`

${COMMAND} install -f ${VERSION}
${COMMAND} global ${VERSION}
${COMMAND} rehash
