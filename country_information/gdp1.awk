#! /usr/bin/awk -f

BEGIN{
  FS= "|"
  count=0
}

($9>30000){
  count++
  print $9 "|" $1
}

END{
  print count
}
