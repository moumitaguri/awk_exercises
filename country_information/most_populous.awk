#! /usr/bin/awk -f

BEGIN{
  FS="|"
  most_population=0
  country=""

}
($3> most_population){
  most_population=$3
  country=$1
}
END{
  print country "|" most_population
}
