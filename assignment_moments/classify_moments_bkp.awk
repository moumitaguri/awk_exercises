#! /usr/bin/awk -f

{
  occurance=tolower($0)
}
(occurance~/Chennai|Missing|Not|INJURIES|Remember|Bad|Fear|Chocolate|Rajani|Can't|have to|Slow|rent |Typing|change|Lack|sleep/){
  print "O|" $0
  next
}

{
  print "W|" $0
}
