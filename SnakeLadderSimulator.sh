#!/bin/bash -x

echo "--------------Snake & Ladder Simulator--------------"

#CONSTANTS
NUMBER_OF_PLAYER=1
START_POSITION=0
WIN=100

#VARIABLE
position=$START_POSITION

#ROLL DIE FOR PLAYER
function rollDie()
{
	echo $((1 + RANDOM%6))
}

#CHECK FOR OPTION
checkCase=$((1+RANDOM%3))
case $checkCase in
	1)
		position=$(( position + rollDie ))
		echo "Player moves ahead by $rollDie position."
		;;
	2)
		position=$(( position - rollDie ))
		echo "Player moves behind by $rollDie position."
		;;
	3)
		echo "Player is on same Position."
		;;
esac


