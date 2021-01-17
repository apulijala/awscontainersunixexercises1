#!/bin/bash
NR == 1 {
    nfields = NF;
}

$0 !~ /^[0-9 \.]*$/ {
    printf "Records %d skipped\n", NR;
}

$0 ~ /^[0-9 \.]*$/ {
    for(i =1; i <=nfields;i++) {
        sums[i] += $i;
        printf "%10.2f", $i > "tally.out" ;
    }
    printf "\n" > "tally.out";
}


END {
    for(i =1; i <=nfields;i++) { 
        printf "%10s", "-------" > "tally.out";
    }
    printf "\n" > "tally.out";
    for(i =1; i <=nfields;i++) { 
        printf "%10.2f", sums[i] > "tally.out";
    }
    printf "\n" > "tally.out";

    
}