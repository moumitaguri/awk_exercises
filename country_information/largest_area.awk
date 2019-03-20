#! /usr/bin/awk -f

BEGIN{
  FS="|"
  area=0
}

($4>area){
  area=$4
  country=$1
}
END{
  print area
  print country
}
