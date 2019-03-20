#! /usr/bin/awk -f

BEGIN{
  FS="|"
}

{
  region[$2]
  population[$2]+=$3
  literate[$2]+= ($3*$10)/100
}

END{
  for(r in region){
    print r
    lr = (literate[r]/ population[r])*100
    print lr
  }
}
