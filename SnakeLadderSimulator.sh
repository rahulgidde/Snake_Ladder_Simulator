#!/bin/bash -x

echo "--------------Snake & Ladder Simulator--------------"

#CONSTANTS
NUMBER_OF_PLAYER=1
START_POSITION=0

#ROLL DIE FOR PLAYER
rollDie=$((1 + RANDOM%6))
