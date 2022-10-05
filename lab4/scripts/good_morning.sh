#!/bin/bash

printf "Good Morning, %s!\n\n" "$(whoami)";
date | awk '{print $4, $5, $6}';
echo;
cal;

