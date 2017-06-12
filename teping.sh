#!/bin/bash

echo "informe a url: "	
	read url
	if [ -z $url ]; then
		echo "URL vazia"
	else 
		ping -q -c 5 $url
		if [ $? -eq 0 ]; then
		
			echo "a URL $URL está no ar"
			echo " "
			echo " "
	
		else
			echo "a URL $URL não está no ar"
			echo " "
			echo " "
		fi
	fi

