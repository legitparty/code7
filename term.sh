#!/bin/sh
xset fp+ "$(dirname "${0}")"
fc-cache flush
cp Xresources.code7 ~/.Xresources
xrdb -merge ~/.Xresources
exec xterm
