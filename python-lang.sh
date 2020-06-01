#!/bin/sh

echo 'eval "$(pyenv init -)"' >> ~/.brewrc

COMMAND='pyenv'
VERSION=`${COMMAND} install -l | grep -v '[a-z]' | tail -n 1`

${COMMAND} install -f ${VERSION}
${COMMAND} versions

${COMMAND} global ${VERSION}
${COMMAND} rehash

pip install scipy
pip install pandas
pip install matplotlib
pip install scikit-learn
pip install xgboost

echo 'if which pyenv-virtualenv-init > /dev/null; then eval "$(pyenv virtualenv-init -)"; fi' >> ~/.brewrc
