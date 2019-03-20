#! /usr/bin/awk -f

BEGIN{
  FS="|"
}
{
if($5<=100){
  group1[$1]=$5
}

else if($5<=300){
  group2[$1]=$5
}
else{
  group3[$1]=$5
}
}
END{
  print "0 -100" "\n" "---------"
  for(country in group1)
    print country " " group1[country]

  print "\n" "100 -300" "\n" "------------"
  for(country in group2)
   print country " " group2[country]

  print "\n" " after 300" "\n" "-----------"
  for(country in group3)
    print country " " group3[country]
}
