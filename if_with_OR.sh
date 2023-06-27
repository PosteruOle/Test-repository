#!/bin/bash

echo "----------------------------------------------"
echo "-- Hello again! Welcome to our little game! --"
read n
if [[ ($n -eq 15 || $n -eq 45) ]] 
then
echo "-- Congrats! You won the game!              --"
else
echo "-- Sorry, but you lost the game!"
fi
echo "-- That's the end of out little game!       --"
echo "----------------------------------------------"
