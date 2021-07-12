#!/bin/bash

# Simple Loading Script

arr1=('-' '\' '|' '/')
while true; do
    for c in "${arr1[@]}"; do
        echo -en "\r $c "
        echo -n "Loading..."
        sleep .5
    done
done