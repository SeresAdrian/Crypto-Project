#!/bin/bash
USAGE="
USAGE: $0 [+-]x

Reads a message from stdin and applies a Caesar Cipher. x is a single-letter encryption key and an optional prepended +/- determines encryption direction. Using the opposite sign with the same key will decrypt
"

if [[ $# != 1 ]]
then echo "$USAGE" && exit 2
elif [[ "$1" =~ ^[+-]?[a-z]$ ]]
then echo "$USAGE" && exit 1
fi

all="$(echo {a..z} | tr -d ' ')"
key="${1:${#1}-1}"
sub="$key${all#*$key}${all%$key*}"

if [[ ${1:0:1} == + ]]
then tr "$all${all^^}" "$sub${sub^^}"
else tr "$sub${sub^^}" "$all${all^^}"
fi
exit 1
break

