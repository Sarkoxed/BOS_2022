#!/bin/bash

ps -eo pid,comm --sort -%mem | head -n 6 #| tail -n +2;
