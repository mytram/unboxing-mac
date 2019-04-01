#!/bin/sh

# . brew.sh

# brew components

for brewsh in `ls brew-*.sh`
do
    echo "${brewsh}..."
    . ${brewsh}
done

for langsh in `ls *-lang.sh`
do
    echo "${langsh}..."
    . ${langsh}
done

. git.sh

. gitlab.sh

crontab ./cronjobs.txt

# echo create directories

mkdir -p ~/sp ~/wp ~/heroku ~/gitlab ~/github ~/tmp

# Manually download
echo "Download fontbase"
