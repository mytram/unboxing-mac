#!/bin/sh

COMMAND='goenv'

VERSION=`${COMMAND} install -l | grep -v '[a-z]' | tail -n 1`

${COMMAND} install -f ${VERSION}
${COMMAND} global ${VERSION}
${COMMAND} rehash
