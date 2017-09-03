#!/bin/bash
for i in $( herbstclient attr clients. |sed -r -e '/childre/ d' \
       -e '/focu/ d' -e '/attr/d' -e 's/.*(0x.*)\./\1/' )
do
	printf "$i "
	herbstclient -n attr clients.$i.title
	printf " "
	herbstclient -n attr clients.$i.instance
	printf " "
	herbstclient attr clients.$i.tag

done | dmenu -b -fn bitocra13 -nf "#efefef" -sb "mediumturquoise" -sf "#141414" -i -p ":"| cut -d " " -f1
