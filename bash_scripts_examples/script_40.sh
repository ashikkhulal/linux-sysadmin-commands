#!/bin/bash

# Calculate Directory Size

echo -n "Enter your directory: "
read -r x
du -sh "$x"