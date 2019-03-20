#! /usr/bin/awk -f

BEGIN{
  FS ="|"
  infant_mortality =0
  country_highest_infant_mortality=""
}

($9>20000 && $8>infant_mortality){
    infant_mortality=$8
    country_highest_infant_mortality=$1
  }

END{
  print country_highest_infant_mortality
  print infant_mortality
}
