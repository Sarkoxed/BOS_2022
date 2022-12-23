#!/bin/bash

echo "*.txt files:";
find "$HOME" -type f -name "*.txt" 2> /dev/null;
echo;

echo "Total size in bytes:";
find "$HOME" -type f -name "*.txt" -exec du -cb {} + 2> /dev/null| tail -n 1 | cut -f 1;
echo;
echo "Total number of lines:";
find "$HOME" -type f -name "*.txt" -exec wc -l {} + 2> /dev/null| tail -n 1 | cut -f 2 -d" ";
