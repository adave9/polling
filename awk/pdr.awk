BEGIN {
sendLine = 0;
recvLine = 0;
fowardLine = 0;
}

$0 ~/^s.* AGT/ {
sendLine ++ ;
}

$0 ~/^r.* AGT/ {
recvLine ++ ;
}

$0 ~/^f.* RTR/ {
fowardLine ++ ;
}

END {
printf �Ratio:%.4f, f:%d \n�, (recvLine/sendLine),fowardLine;
}

