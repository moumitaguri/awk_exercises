#! /usr/bin/awk -f

BEGIN {
  FS="|"
}
(NR==1) {
  country=$1;population=$3
}
($3<population) {
  country=$1;population=$3
}
END{ 
  print country,population
}

