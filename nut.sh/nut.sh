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

dn_post() {
    if [ -z "$1" ]; then
        echo "Usage: dn_post <url> [content_type] [request_body]"
        return 1
    fi
    content_type="${2:-application/json}"
    request_body="${3:-{}}"
    curl --request POST --header "Content-Type: $content_type" --data "$request_body" "$1"
}

dn_put() {
    if [ -z "$1" ]; then
        echo "Usage: dn_put <url> [content_type] [request_body]"
        return 1
    fi
    content_type="${2:-application/json}"
    request_body="${3:-{}}"
    curl --request PUT --header "Content-Type: $content_type" --data "$request_body" "$1"
}

dn_del() {
    if [ -z "$1" ]; then
        echo "Usage: dn_del <url> [content_type] [request_body]"
        return 1
    fi
    content_type="${2:-application/json}"
    request_body="${3:-{}}"
    curl --request DELETE --header "Content-Type: $content_type" --data "$request_body" "$1"
}

dn_patch() {
    if [ -z "$1" ]; then
        echo "Usage: dn_patch <url> [content_type] [request_body]"
        return 1
    fi
    content_type="${2:-application/json}"
    request_body="${3:-{}}"
    curl --request PATCH --header "Content-Type: $content_type" --data "$request_body" "$1"
}

dn_get(){
    if [ -z "$1" ]; then
        echo "Usage: dn_get <url>"
        return 1
    fi
    curl "$1"

}
