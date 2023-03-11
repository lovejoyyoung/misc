#! /bin/zsh

echo "Hello What's your name?"

read name

echo "How old are you?"

read age

sleep 1

echo "Hi $name, you are $age years old."

sleep 2

echo "Calculating"
echo "........."
sleep 1
echo "**......."
sleep 1
echo "****....."
sleep 1
echo "******..."
sleep 1
echo "*********"

getrich=$((( $RANDOM % 15 ) + $age))

echo "$name, you will become a millionare when you are $getrich years old"