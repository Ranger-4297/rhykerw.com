#!/bin/sh
# This shell script is PUBLIC DOMAIN. You may do whatever you want with it.

TOGGLE=$HOME/.toggle

if [ ! -e $TOGGLE ]; then
    touch $TOGGLE
    mv ./maintenance.off ./maintenance.html
else
    rm $TOGGLE
    mv ./maintenance.html ./maintenance.off
fi
