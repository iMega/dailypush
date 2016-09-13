#!/usr/bin/env bash

# Random range 1..5 commits per day
REPEAT=$(( ( RANDOM % 5 )  + 1 ))
until [ $REPEAT -lt 1 ]; do
    echo "." >> README.md
    git add README.md
    git commit -m 'New changes'
    git push origin master
    let REPEAT-=1
done
