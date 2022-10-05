#!/bin/bash

echo "Date:";
date;
echo "Existing Users:";
awk -F: '{ print $1}' /etc/passwd | tr '\n' " "; 
echo;
echo "Uptime:";
uptime;

