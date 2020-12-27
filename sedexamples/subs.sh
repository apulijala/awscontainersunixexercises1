#!/bin/bash 

for file in $* 
do 

	cp "$file" "$$.tmpfile" 

	sed 's/REPORT/report/g 
	     s/FILE/file/g
	     s/PROCESS/process/g' "$$.tmpfile" > "$file" 

done



