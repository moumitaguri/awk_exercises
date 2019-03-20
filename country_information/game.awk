#! /usr/bin/awk -f

BEGIN{
  print "Enter player1's name"
  getline player1
  print "player1:" player1
  print "enter player2's name"
  getline player2
  print "player2:" player2
  print " choose symbol : X/O"
  getline symbol1
  getline symbol2
  print "for player1=" symbol1
  print "for player2=" symbol2 
  split("1,2,3,4,5,6,7,8,9",positions,",")
}

{

