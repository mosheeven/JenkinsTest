#!/bin/bash

FILENMBER=$1;
echo ${FILENMBER}
if [[ -n "$FILENMBER" ]];
then
	echo "file number is ${FILENMBER}" >> ./file_${FILENMBER} 
	exit
fi

echo "File without number" >> ./file.txt
