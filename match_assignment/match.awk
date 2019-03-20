#! /usr/bin/awk -f

BEGIN{
  FS= " "
}

($1==2){
  part2[substr($2,1,4)]= substr($2,5,(length($2)-4))
}
($1==1){
  part1[substr($2,(length($2)-3),4)]= substr($2,1,(length($2)-4))
}
END{
  for(pattern in part1){
          print part1[pattern] pattern part2[pattern]
    }  
  }
