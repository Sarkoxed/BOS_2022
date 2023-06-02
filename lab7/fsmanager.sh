#!/bin/bash

usage(){
    echo "Usage: $(basename "${BASH_SOURCE[0]}") [--help]";
    echo "FileSystem manager";
    echo;
    echo "Mandatory arguments to long options are mandatory for short options too."
    echo "  -h | --help        display this help and exit"
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


parse_params(){
    while :; do
        case $1 in
        -h|--help) usage;;
        #-s|--searchpath)
        #  SEARCHPATH="$2"
        #  shift # past argument
        #  shift # past value
        #  ;;
        #--default)
        #  DEFAULT=YES
        #  shift # past argument
        #  ;;
        -*)
          errexit "Unknown option $1";;
        *)
          POSITIONAL_ARGS+=("$1"); # save positional arg
          shift;;
  esac

    done
}

menu(){
    echo "1) вывести таблицу файловых систем;"
    echo "2) "
}

isroot;
parse_params "$@";

