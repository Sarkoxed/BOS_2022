#!/bin/bash

printf "Домашний каталог пользователя\n%s\nСодержит обычных файлов:\n" "$(whoami)";
find /home/sarkoxedaf -maxdepth 1 -type f -not -name ".*" | wc -l;
printf "скрытых файлов:\n";
find /home/sarkoxedaf -maxdepth 1 -type f -name ".*" | wc -l;
