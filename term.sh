#!/bin/sh
dir="$(dirname "${0}")"
if [ "${dir}" = . ]
then
	dir="$(pwd)/${dir}"
fi
xset fp+ "${dir}"
fc-cache flush
cp Xresources.code7 ~/.Xresources
xrdb -merge ~/.Xresources
exec xterm
