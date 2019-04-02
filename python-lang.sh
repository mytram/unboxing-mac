#!/bin/sh

brew install pyenv
echo 'eval "$(pyenv init -)"' >> ~/.bashrc_brew

COMMAND='pyenv'
VERSION=`${COMMAND} install -l | grep -v '[a-z]' | tail -n 1`

${COMMAND} install -f ${VERSION}
${COMMAND} versions

${COMMAND} global ${VERSION}
${COMMAND} rehash
