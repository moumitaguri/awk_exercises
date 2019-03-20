#! /usr/bin/awk -f

BEGIN{
  FS ="|"
}

{
  regions[$2]
  phone_per_region[$2]+=(($3*$11)/1000)
  people_per_region[$2]+=$3
}
 END{
   for(region in regions){
      people_without_phone_per_region= people_per_region[region]-phone_per_region[region]
     print region "\n" people_without_phone_per_region "|" people_per_region[region]"|" phone_per_region[region]
    }
   }
