#!/bin/bash
#Readable netstat output by Jaufré Aligé

#If time is empty, set reflesh to 5s.
if [$2 -eq ""] 
then
duration=5
else
duration=$2
fi

case $1 in

c )
  while true; do
     #If never ran, prepare file name. Else, destroy old file.
     if [ -z "$dt" ]
     then
       dt=`date '+%d-%m-%Y_%H:%M:%S'`
       filename=connections_$dt.txt
     else
       rm $filename
       dt=`date '+%d-%m-%Y_%H:%M:%S'`
       filename=connections_$dt.txt
     fi
      tput reset
      date | tee $filename
      sudo netstat -ptun | tee -a $filename
      echo 'Press any key to exit and keep this output in '$filename
      if read -r -N 1 -t $duration; then
          break
      fi
  done 
;;
l )
  while true; do
     #If never ran, prepare file name. Else, destroy old file.
     if [ -z "$dt" ]
     then
       dt=`date '+%d-%m-%Y_%H:%M:%S'`
       filename=connections_$dt.txt
     else
       rm $filename
       dt=`date '+%d-%m-%Y_%H:%M:%S'`
       filename=connections_$dt.txt
     fi
     tput reset
     date | tee $filename
     sudo netstat -lptun | tee -a $filename
     echo 'Press any key to exit and keep this output in '$filename
     if read -r -N 1 -t $duration; then
         break
     fi
  done 
;;
*)
tput reset
echo -e "Syntax : friendly-netstat [option] [refresh delay in seconds]\r
gives you connected ports and programs or listening servers\r
The output is also written in connections[time].txt (in this script folder) \n
Exemple : friendly-netstat c 5 \n
If no refresh delay specified, refreshes output every 5sec. \n
Options :\r
	c : connections  \r
	l : listening servers \n"
;;
esac
