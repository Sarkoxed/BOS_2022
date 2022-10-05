#!/bin/bash

ps -eo %mem,pid | sort -n -r | head -n5 | awk '{print $2};
