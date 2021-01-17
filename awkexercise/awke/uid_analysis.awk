BEGIN {
    FS=":";
    uid[void]="";
}



{   
    if (uid[$3] != ""){
        print $1, "has same uid as", uid[$3], ":UID =", $3 ;
    }else {
        uid[$3]=$1;
    }
}

$2 == "" {
   if ($5 == "") {
    printf "%-3s has no password.\n", $1;
    }else {
        printf "%-5s(%7s) has no password.\n", $1, $5;
    }
}
