#!/bin/bash
# Deeznuts v0.0.1
# Author TheWisePigeon on GitHub
source ./nut_manager.sh

OS=$(uname)

function gitpush(){
    git add . && git commit -m "$1" && git push
}

function youtube(){
    if [ -z "$1" ]; then
        echo "Please provide a search query";
    elif [ "$OS" == "Linux" ]; then
        xdg-open "$1";
    elif [ "$OS" == "Darwin" ]; then
        open "$1";
    else
        start "$1"
    fi
}
