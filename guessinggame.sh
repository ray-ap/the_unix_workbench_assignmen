#!/usr/bin/env bash

function guesschecker {
  if [[ $guess =~ ^[0-9]+ ]] ; then
    if [[ "$guess" -eq "$count" ]] ;
      then echo
      echo "     <<>><<>><<>><<>><<>><<>><<>><<>><<>><<>><<>><<>><<>><<>><<>><<>><<>>"
      echo "     |  Congratulation! You have correctly guessed the number of files! |"
      echo "     <<>><<>><<>><<>><<>><<>><<>><<>><<>><<>><<>><<>><<>><<>><<>><<>><<>>"
      echo
    elif [[ "$guess" -gt "$count" ]] ;
      then echo "     Woah! Woah! Thats way too high a guess! Maybe try a little lower?."
    elif [[ "$guess" -lt "$count" ]] ;
      then echo "     C'mon don't be so timid. Go Big or Go Home! Try Bigger!"
    fi
  else
    echo "     Your guess is not a number. Kindly guess with a number."
  fi
}

count=$(ls -a | wc -l)

echo
echo "     __,.-'~'-.,__,.-'~'-.,__,.-'~'-.,__,.-'~'-.,__,.-'~'-.,__,.-'~'-.,__ "
echo "    |                      Welcome fellow Riddler!                       |"
echo "    |                        Up for a challenge?                         |"
echo "    |     Can you guess how many files are in the current directory?     |"
echo "    '~'-.,__,.-'~'-.,__,.-'~'-.,__,.-'~'-.,__,.-'~'-.,__,.-'~'-.,__,.-'~' "
echo ""

while [[ $guess -ne $count ]]
do
  echo "     What be your guess?"
  read guess
  guesschecker ;
done
