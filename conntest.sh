#!/bin/bash

connected= true

#while $connected:
#do
	 
	ping_result=$(timeout 3  ping -c1 www.google.com | tail -1 | awk '{print $4}' | cut -d '/' -f 2)
	clean_result=${ping_result%.*}
	
	if [[ "$clean_result" -gt 0 ]]; then
		#sleep 1m
		echo "Connected. Ping: $clean_result"
		#continue
	else
		connected= false
		export outage_begin= $(date)
		while ["$connected" == "false"]: 
		do
			reconnect= $(timeout 3 ping -c1 google)
			response_code= `$?`
			if [["$response_code" -ne 0]]; then
				continue
			else
				connected= true
				export outage_end=$(date)
				break
			fi

		done
	fi
#done
