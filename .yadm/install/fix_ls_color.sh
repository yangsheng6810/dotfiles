#!/bin/sh
dircolors -p > ~/.dir_colors
sed -i '/TERM eterm-color/a TERM eterm-256color' ~/.dir_colors
