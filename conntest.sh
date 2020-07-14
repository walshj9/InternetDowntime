#!/bin/bash

now=$(date)


ping_result=$(ping -c1 www.google.com | tail -1 | awk '{print $4}' | cut -d '/' -f 2)
clean_result=${ping_result%.*}

if [[ "$clean_result" -gt 0 ]]
then
	echo "There is an internet connection"
fi

