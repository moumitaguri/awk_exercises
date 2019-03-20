#! /usr/bin/awk -f

BEGIN{
  FS ="|"
}

{
  regions[$2]
  total_region_area[$2]+=$4
  total_region_arable_area[$2]+= ($12*$4)/100
  }

END{
  for(region in regions){ 
    percentage_per_region=(total_region_arable_area[region]/total_region_area[region])*100
    print region
    print percentage_per_region
  }
}
