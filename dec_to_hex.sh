#!/bin/zsh

echo "Provide a number to be converted to hexidecimal: \c"
read dec

printf '%x\n' $dec
