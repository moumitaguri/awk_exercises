#! /usr/bin/awk -f

($0 ~/Chennai|Missing|Not|INJURIES|Remember|Bad|Fear|Chocolate|Rajani|Can't|Slow|Rent|far|Sleep| rent|Typing|change|Lack|sleep|have to/){
  print "O|" $0
  next
}

{
  print "W|" $0
}
