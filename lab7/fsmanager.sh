#!/bin/bash

usage(){
    echo "Usage: $(basename "${BASH_SOURCE[0]}") [--help]";
    echo "FileSystem manager";
    echo;
    echo "Mandatory arguments to long options are mandatory for short options too."
    echo "      --help        display this help and exit"
    exit 0
}

isroot(){
    if [[ $EUID -ne 0 ]]; then
        errexit "This script must be run as root"
    fi
}

errexit(){
    echo >&2 "$1";
    exit 1
}

errexit aboba;
