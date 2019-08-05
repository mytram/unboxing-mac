#!/bin/sh

brew install zlib
brew install pyenv

echo 'eval "$(pyenv init -)"' >> ~/.bashrc_brew

COMMAND='pyenv'
VERSION=`${COMMAND} install -l | grep -v '[a-z]' | tail -n 1`

${COMMAND} install -f ${VERSION}
${COMMAND} versions

${COMMAND} global ${VERSION}
${COMMAND} rehash

brew install pyenv-virtualenv

pip install scipy
pip install pandas
pip install matplotlib
pip install scikit-learn

echo 'if which pyenv-virtualenv-init > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi' >> ~/.bashrc_brew
