#!/bin/sh

wew -a | while IFS=: read ev wid; do
case $ev in
    7)
        ro=$(wattr o $wid)
        if (( $ro == 1)); then
            focus.sh $wid
        fi;;
esac;
done
