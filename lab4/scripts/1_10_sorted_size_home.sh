#!/bin/bash

du -d 1 -a "$HOME" 2>/dev/null | sort -n | awk '{print $2}' | head -n -1 | cut -d '/' -f4;
