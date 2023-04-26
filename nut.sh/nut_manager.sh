#!/bin/bash
# This is the nutsh manager
# Responsible of updating/ downloading addons...
VERSION="0.1"

HELP_STRING="
Welcome to deez Nut.sh
A collection of bash goodies designed to make your life easier
Contribute to deeznutsh on github https://github.com/TheWisePigeon/deeznutsh
"

function nut (){
   COMMAND=$1
   ARGUMENT=$2
   OS=$(uname)
    case "$1" in
        "version") echo "v $VERSION"
        ;;
        "--version") echo "v $VERSION"
        ;;
        "self")
            case "$ARGUMENT" in
                "update") 
                    curl -L cdn.reexlabs.com/update | bash
                ;;
                "remove")
                    echo -e "Removing deeznutsh from your computer, Thanks for trying it out!"
                    rm -rf "$(dirname "${BASH_SOURCE[0]}")"
                ;;
                *) echo "Unsupported argument"
                ;;
            esac
        ;;
        *) echo "$HELP_STRING"
        ;;
    esac
}
