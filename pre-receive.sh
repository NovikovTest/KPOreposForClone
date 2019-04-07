#!/bin/bash

changedBranch=$(git symbolic-ref HEAD | sed -e 's,.*/\(.*\),\1,')
whiteList=(NovikovTest)

if [[ ${whiteList[*]} =~ $USER ]]; then
    if [ $changedBranch == "master" ]; then
        echo "You are not allowed commit changes in this branch"
        exit 1
    fi
fi