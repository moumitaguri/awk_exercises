#! /usr/bin/awk -f

BEGIN{
  FS ="|"
  birth_rate=0
  death_rate=0
  }

($6<2){
     countries[$1]
     birthrate[$1]=$17
     deathrate[$1]=$18
    }

END{
  print "among the countries:climate below 2" "\n" "-----------------------------------"
     for(country in countries){
      if(birthrate[country]>birth_rate){
        birth_rate=birthrate[country]
        highest_birthrate_country=country
      }
    }
    print "highest_birthrate_country" "\n" highest_birthrate_country " " birth_rate
     for(country in countries){
      if(deathrate[country]>death_rate){
        death_rate=deathrate[country]
        highest_deathrate_country=country
      }
    }
    print "highest_deathrate_country" "\n" highest_deathrate_country " " death_rate
  }  
