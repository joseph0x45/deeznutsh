#!/bin/bash
# This is the nutsh manager
# Responsible of updating/ downloading addons...


function nutsh (){
    COMMAND=$1
    OS=$(uname)

    case "$1" in
        "version") echo "nutsh v-0.0.1"
        ;;
        "--version") echo "nutsh v-0.0.1"
        ;;
        *) echo "Help"
        ;;
    esac
}
