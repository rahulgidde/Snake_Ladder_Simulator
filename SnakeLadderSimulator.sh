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

function ladder()
{
	number=$1
	for (( ladder=1; ladder<=$number; ladder++ ))
	do
		((position++))
		echo $position
	done
}

function snake()
{
	number=$1
	for (( snake=1; snake<=$number; snake++ ))
	do
		if [ $position -lt 0 ]
		then
			position=0
			break;
		else
			((position--))
			echo $position
		fi
	done
}

while [[ $position -ne $WIN ]]
do
	dieNumber=$(rollDie)
	checkCase=$((1+RANDOM%3))
	case $checkCase in
		1)
			echo "Ladder : " $dieNumber
			ladder $dieNumber
			;;
		2)
			echo "Snake : " $dieNumber
			snake $dieNumber
			;;
		3)
			echo "No Play : 0"
			;;
	esac
done



