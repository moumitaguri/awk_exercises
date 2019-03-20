#! /usr/bin/awk -f

BEGIN {
  FS="|"
  area=0
}

{area+=$4}

END{
  print area
}
