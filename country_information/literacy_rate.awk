#! /usr/bin/awk -f

BEGIN{
  FS ="|"
  count = 0
}

($10 > 70){
  count++
  print $10 "|" $1
}
END{
  print count
}
