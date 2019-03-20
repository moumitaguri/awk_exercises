#! /usr/bin/awk -f

BEGIN{
  FS ="|"
  count=0
}
($6 ==0) {
  count++
  country=$1
  coastline=$6
  print country,coastline
}
END{
  print count
}
