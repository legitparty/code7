#!/bin/sh
dir="$(dirname "${0}")"
if [ "${dir}" = . ]
then
	dir="$(pwd)/${dir}"
fi
xset fp+ "${dir}"
fc-cache flush
xrdb -merge "${dir}/Xresources.code7"
xrdb -merge "${dir}/Xresources.dark"
