#!/bin/bash
files=$(ls "$HOME" | grep -E ".*\.txt$" | wc -l);
printf "$files\n";
