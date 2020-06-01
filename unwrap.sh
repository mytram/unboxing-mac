#!/bin/sh

xcode-select --install

. brew.sh

for langsh in `ls *-lang.sh`
do
    echo "${langsh}..."
    . ${langsh}
done

sh -c "$(curl -fsSL https://raw.githubusercontent.com/ohmyzsh/ohmyzsh/master/tools/install.sh)"

. git.sh

# . kubernetes.sh
# . gcloud.sh

# crontab ./cronjobs.txt

# echo create directories

mkdir -p ~/sp ~/wp ~/heroku ~/gitlab ~/github ~/tmp
