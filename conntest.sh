#!/bin/bash

now=$(date)

connected= true
#while $connected:
#do
	 
	ping_result=$(timeout 3  ping -c1 www.google.com | tail -1 | awk '{print $4}' | cut -d '/' -f 2)
	clean_result=${ping_result%.*}
	
	if [[ "$clean_result" -gt 0 ]]; then
		echo "Ping: $clean_result"
	else
		echo "No Connection"
	fi
#done
