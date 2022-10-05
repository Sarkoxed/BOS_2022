#!/bin/bash

echo "Процессов пользователя:";
whoami;
ps axo user | grep -Ec "^$(whoami)$";
echo "Процессов пользователя root:";
ps axo user | grep -Ec "^root$";
