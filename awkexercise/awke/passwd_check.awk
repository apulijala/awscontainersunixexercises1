BEGIN {
    FS =":";
}

{

    if (uid[$3] != "" ) {
        print $1. " has same uid as", uid[$3] , "uid =", $3 ;
    } else { 
        uid[$3] = $1; 
    }

     if ($2 ~ /^$/) {
        str=$1;
        sub(/ */,"",str);
        
        if ($5 == "") {
            printf "%-3s has no password \n",str;
        } else {
            
            printf "%-5s(%7s) has no password \n",str, $5; 
        }
    }
}
