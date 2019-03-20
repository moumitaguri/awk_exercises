#! /usr/bin/awk -f

BEGIN{
  FS= "|"

}

($8 ~/Korean/){
  print $6
}

