#!/bin/sh
dir="$(dirname "${0}")"
if [ "${dir}" = . ]
then
	dir="$(pwd -L)/${dir}"
fi
xset fp+ "${dir}"
fc-cache -v -f "${dir}"
xrdb -merge "${dir}/Xresources.code7"
xrdb -merge "${dir}/Xresources.dark"
