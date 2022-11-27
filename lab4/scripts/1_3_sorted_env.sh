#!/bin/bash

f=$(env | cut -f1 -d'=' | sort);
printf "$f";
