#! /usr/bin/awk -f

BEGIN{
  FS="|"
}

{
  country[$1]=$2
  region[$2]
}
END{
  for(re in region){
    print re
    print "________________"
  for(r in country){

    if(country[r]==re){
    print r
  }
  }
}
}
