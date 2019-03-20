#! /usr/bin/awk -f

BEGIN{
  FS ="|"
  count=0

}
($2 ~/ASIA/){
  count++
  print $2"|" $1
}

END{
  print count
}

