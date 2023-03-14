#! /bin/zsh

ipad=$(ifconfig | grep boardcast)

echo "ip is $ipad"

echo "Would you like soccer (Y/N)?"

read yn

if [[ $yn == "y" ]];then
      echo "You are interesting"
else
      echo "Okay fine"
fi
