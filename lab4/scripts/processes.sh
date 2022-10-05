#!/bin/bash

echo "Процессов пользователя:";
ps axo user | grep -Ec "^$(whoami)$";
echo "Процессов пользователя root:";
ps axo user | grep -Ec "^root$";
