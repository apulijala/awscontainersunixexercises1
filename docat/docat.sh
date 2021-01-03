#!/bin/bash 

<<EOF
This script is a poor version of the zipping file. 
Invocation. 
./docat.sh file1 file2. 
should print to unzip bash this file. 
EOF
echo "# to unzip bash this file"
for file in "$@" 
do 
    echo "cat <<EOF >$file" # generating code here. 
    cat "$file"
echo 'EOF'
done









