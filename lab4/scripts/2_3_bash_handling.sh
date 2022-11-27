#!/bin/bash
file="$HOME"/bash.txt;
grep "000000" "$file" > /tmp/zeros
grep -v "000000" "$file" > /tmp/nozeros
head -n 10 /tmp/zeros && tail -n 10 /tmp/zeros;
echo;
head -n 10 /tmp/nozeros && tail -n 10 /tmp/nozeros;
