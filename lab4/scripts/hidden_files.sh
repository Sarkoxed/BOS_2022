#!/bin/bash

printf "Домашний каталог пользователя\n%s\nСодержит обычных файлов:\n" "$(whoami)";
find "$HOME" -maxdepth 1 -type f -not -name ".*" | wc -l;
printf "скрытых файлов:\n";
find "$HOME" -maxdepth 1 -type f -name ".*" | wc -l;
