#!/bin/bash
for i in 1 2 3 4 5 6 7 8 9 0
do
	if [ `herbstclient attr tags.$i.client_count` = 0 ]
	then
		echo $i
		break
	fi
done
