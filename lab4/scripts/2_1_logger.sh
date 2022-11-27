#!/bin/bash

path="/tmp/run.log";

date >> "$path";
echo "Hello, World!";
wc -l "$path" | cut -f1 -d" " >&2;
