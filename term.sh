#!/bin/sh
#exec xterm -rv -fn '-*-bwoolley-*-*-*-*-*-*-*-*-*-*-*-*' -fb '-*-bwoolley-*-*-*-*-*-*-*-*-*-*-*-*'
cp ~/Xresources.dark ~/.Xresources
xrdb -merge ~/.Xresources
exec xterm -fn '-bwoolley-code7-*-*-*-*-*-*-*-*-*-*-*-*' -fb '-bwoolley-code7sc-*-*-*-*-*-*-*-*-*-*-*-*'
