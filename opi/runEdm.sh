#!/bin/sh

case "$#" in
    0)  P="K6487:"  R="1:"   ;;
    1)  P="$1"      R="1:"   ;;
    2)  P="$1"      R="$2"   ;;
    *)  echo "Usage: $0 [P [R]]" >&2 ; exit 1 ;;
esac

exec edm -x -m "P=$P,R=$R" Engineering.edl
