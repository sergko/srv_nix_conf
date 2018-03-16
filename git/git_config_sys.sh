#!/bin/bash
#script for GIT configuration in whole system at /etc/gitconfig
git config --system user.name "Sergey Kovbyk" 
git config --system user.email kovbyk@gmail.com &
git config --system color.status auto &
git config --system color.branch auto &
git config --system color.interactive auto &
git config --system color.diff auto
git config --system core.editor mcedit
