#!/bin/sh

brew install git
brew install bash-git-prompt

cat <<EOF >> ~/.bashrc_brew

if [ -f "/usr/local/opt/bash-git-prompt/share/gitprompt.sh" ]; then
    __GIT_PROMPT_DIR="/usr/local/opt/bash-git-prompt/share"
    source "/usr/local/opt/bash-git-prompt/share/gitprompt.sh"
fi

EOF

# Common aliases
git config --global alias.co checkout
git config --global alias.br branch
git config --global alias.ci commit
git config --global alias.st status

# Assume your user account is the same as your email login
#
# See more details at https://gist.github.com/tony4d/3454372
#
git config --global merge.tool p4mergetool
git config --global mergetool.p4mergetool.cmd \
    "/Applications/p4merge.app/Contents/Resources/launchp4merge \$PWD/\$BASE \$PWD/\$REMOTE \$PWD/\$LOCAL \$PWD/\$MERGED"
git config --global mergetool.p4mergetool.trustExitCode false
git config --global mergetool.keepBackup false

git config --global diff.tool p4mergetool
git config --global difftool.p4mergetool.cmd \
    "/Applications/p4merge.app/Contents/Resources/launchp4merge \$LOCAL \$REMOTE"

#
# Change this to your favourite Editor
#
git config --global core.editor "/usr/local/bin/emacsclient"
