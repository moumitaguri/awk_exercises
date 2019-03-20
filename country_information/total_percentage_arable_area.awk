#! /usr/bin/awk -f

BEGIN{
  FS="|"
}

{
  total_area+= $4
  total_arable_area+= ($4*$12)/100
  total_percentage_arable_area= (total_arable_area/total_area)*100
}

END{
  print total_percentage_arable_area
}
