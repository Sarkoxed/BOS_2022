#!/bin/bash

while read -r line 
do
    IFS=" "
    read -r euid ruid comm <<< "$line";
    if [[ $ruid != "$euid" ]]
    then
        printf "%s\n" "$comm";
    fi
done < <(ps -eo euid,ruid,comm --no-headers)
