#!/bin/bash

source "$HOME/nutsh/nut_manager.sh"

OS=$(uname)

function gitpush(){
    git add . && git commit -m "$1" && git push
}

function youtube(){
    if [ -z "$1" ]; then
        echo "Please provide a search query";
    elif [ "$OS" == "Linux" ]; then
        xdg-open "https://youtube.com/results?search_query=$1";
    elif [ "$OS" == "Darwin" ]; then
        open "https://youtube.com/results?search_query=$1";
    else
        start "https://youtube.com/results?search_query=$1"
    fi
}



function google(){
    if [ -z "$1" ]; then
        echo "Please provide a search query";
    elif [ "$OS" == "Linux" ]; then
        xdg-open "https://www.google.com/search?q=$1";
    elif [ "$OS" == "Darwin" ]; then
        open "https://www.google.com/search?q=$1";
    else
        start "https://www.google.com/search?q=$1"
    fi
}
