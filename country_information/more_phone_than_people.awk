#! /usr/bin/awk -f

BEGIN{
  FS ="|"
}
{
  No_of_people[$1]=$3
  No_of_phone[$1]=($3*$11)/1000
  countries[$1]
  }

 END{
    for(country in countries){
      if(No_of_phone[country]>No_of_people[country]){
        print country
        print No_of_people[country]
        print No_of_phone[country]
        }
      }
    }
