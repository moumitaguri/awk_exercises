#! /usr/bin/awk -f

BEGIN{
  names ="mou, rina, guri"
  roll ="12, 13, 14"
  split(names,n,", ")
  split(roll,r,", ")

  count =1
  while((count <= length(n)) && (name !=n[count])){
  count++
  }
  print r[count]


}
