#! /usr/bin/awk -f

BEGIN{
  FS="|"
  count=0
}

(($9>20000) && ($10<90)){
  count++
  print $9 "|" $10 "|" $1
}

END{
  print count
}

