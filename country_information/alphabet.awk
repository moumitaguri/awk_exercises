#! /usr/bin/awk -f

BEGIN{
  alphabets="a,b,c,d,e,f,g,h,i,j,k,l,m,n,o,p,q,r,s,t,u,v,w,x,y,z"
  split(alphabets,alphabet,",")
  score=0
}
{
  srand()
  random_value= int(rand()*26)+1
  print random_value
  print "enter the corresponding alphabet"
  getline input
  if(input==alphabet[random_value]){
    print "correct"
    score+=5
    print "your score is :"score
  }else{
     print "incorrect"
     print "your score is:"score
     exit
   }
}
