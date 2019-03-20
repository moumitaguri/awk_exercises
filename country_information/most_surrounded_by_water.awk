#! /usr/bin/awk -f

BEGIN{
  FS="|"
  record_region=""
  record=0
}

{
  region[$2]
  coastline[$2]+= $6*$4
  for(one_region in region){
    if(coastline[one_region] > record){
      record=coastline[one_region]
      record_region= one_region
    }
  }
}

END{
  print coastline[one_region]
  print record_region
}




