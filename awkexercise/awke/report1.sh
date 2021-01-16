#!/bin/bash

d=$(date '+%a %b %d %Y') 

printf "Report for $d \n"  

awk '{print $NF,"  " $1 }' cars



