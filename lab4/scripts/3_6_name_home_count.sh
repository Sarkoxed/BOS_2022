#!/bin/bash


nlen=$(echo -n "$USER" | wc -c);
hlen=$(echo -n "$HOME" | wc -c);

slen=$((nlen+hlen));

printf "%s %s %s" "$USER" "$HOME" "$slen";
