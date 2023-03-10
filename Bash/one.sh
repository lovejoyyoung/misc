#!/bin/zsh

name=$1
compliment=$2

user=$(whoami)
date=$(date)
whereami=$(pwd)

echo "Hello $name!!"
sleep 1
echo "Have a nice day $name!!"
sleep 1
echo "You are the best $compliment!!"
sleep 1
echo "You are currently logged in as $user and you are in the directory $whereami at $date."
