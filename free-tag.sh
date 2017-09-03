#!/bin/bash
for TAG in $(
	for i in $(herbstclient attr tags.by-name.); do
		echo $i |\
		grep '\.'|\
		sed -r -e "s/([0-9]*)\./\1/" \
			-e '/attributes/d'
	done
	)
do
	if [ `herbstclient attr tags.by-name.$TAG.client_count` = 0 ]
	then
		echo $TAG
		break
	fi
done
