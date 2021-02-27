#!/bin/bash
echo "Installing figlet, lolcat, toilet for make project atractive"
sudo apt-get install figlet,lolcat,toilet
clear
welcome()
{
echo ""
echo ""
echo ""
echo ""
echo ""
figlet -c  "SONU" | lolcat -a -d 5
sleep 0.5s
figlet -c "WELCOMES YOU IN" | lolcat -a -d 5
sleep 0.5s
figlet -c "LINUX PROJECT" | lolcat -a -d 5
sleep 0.9s
introduction
}

introduction()
{
clear
figlet 'INTRODUCTION:-' -f small |lolcat -a -d 10 
sleep 1.5s
echo ""
echo ""
echo 'THIS PROJECT IS BASED ON LINUX AND IS DEVELOPED IN BASH. SO, IN THIS PROJECT YOU WILL GET OPTIONS OF ADDING,DELETING,SEARCHING,FETCHING THE DATA.'
sleep 1s
echo ""
echo "CONTACTS AND MORE OVER THIS PROJECT WILL SAVE ALL YOUR NEWLY CREATED AND MANIPULATED DATA IN A .LOG FILE NAMED 'phonedir.log' WHICH IS THE"
echo ""
sleep 1s
echo "CREATED AUTOMATICALLY BY THE SCRIPT ITSELF."
sleep 1s
echo ""
echo "THE .LOG FILE WILL BE SAVED IN THE DIRECTORY WHERE THE BASH FILE OF PROJECT IS STORED!!"
echo ""
sleep 1s
echo "WE HAVE USED FOLLOWING COMMANDS TO MAKE THIS PROJECT MORE ATTRACTIVE :-"
echo ""
sleep 2s
echo "1.FIGLET-TO MAKE TEXT MORE STYLISH"
echo ""
echo "2.TOILET-TO PUT SOME EXTRA COLOR TO FONT OF TEXT"
echo ""
echo "3.LOLCAT:-TO PUT ANIMATION OF RAINBOW ON TEXT"
echo ""
sleep 2s
figlet -f slant -c "LETS GET STARTED ->"
read -p "         Press Any Key to PROCEED " confirm_exit
if [ $confirm_exit -eq 2 ]
then
spinner=('|''/''-''\');
core
else
core
fi
}

count(){
echo -n "HOLD ON! PROJECT IS JUST OPENING"
  spin &
  pid=$!
 
  for i in `seq 1 10`
  do
    sleep 1;
  done
 
  kill $pid 
echo "" 
core
}

spin(){
  while [ 1 ]
  do 
    echo -ne "."
    
      sleep 0.2;
   
  done
}


core()
{

while :
do
clear
echo "=============================================================================================================================================="
figlet -f big -c "Welcome To The Phone Directory" |lolcat -a -d 1
#figlet -t -k Welcome To The Phone Directory
echo "=============================================================================================================================================="
echo ""
echo ""
echo ""
toilet -f term -F border --gay "1. Add a Contact"
toilet -f term -F border --gay "2. Search Contact"
toilet -f term -F border --gay "3. Delete Contact"
toilet -f term -F border --gay "4. View Saved Contacts"
toilet -f term -F border --gay "5. Quit"
echo ""
echo ""
echo ""
read -p "Enter Your Choice: " usr_cmd
clear
case $usr_cmd in
1)	echo "==========================================================================================================================================="
	figlet -c -f small "ADD NEW CONTACT" | lolcat -a -d 1
	echo "================================================================================================================================"
	echo ""
        figlet -c -f small "Enter Name: " 
	read -p "" name
	#echo "Got that!"
	figlet -c -f slant "Got That!"
        figlet -c -f small "Enter Phone Number: " 
	read -p "" number
	clear
	#echo "New Contact Info:-"
	figlet -c -f small "    New Contact Info:- " 
	echo ""
	echo "1.Name : $name"
	echo "2.Number : $number"
	echo "$name : $number" >> phonedir.log
	figlet -c -f small "Contact Saved Successfully!!" | lolcat -a -d 2
;;
2)	echo "=============================================================================================================================================="
	figlet -c -f big "SEARCH THE CONTACT" | lolcat -a -d 1
	echo "============================================================================================================================================="
	echo ""
	figlet -c -f small "ENTER THE NAME TO BE SEARCHED:-"
	read -p "  " search_query
	clear
	figlet -c -f big "SEARCH RESULTS:" | lolcat -a -d 1
	echo ""
	grep -i $search_query phonedir.log
;;
3)	echo "=============================================================================================================================================="
	figlet -c -f big "DELETE CONTACT" | lolcat -a -d 1
	echo "=============================================================================================================================================="
	figlet -c -f small "ENTER THE NAME OF CONTACT TO BE DELETED:-"
        read -p "" delete_query
	sed -i -e "/$delete_query/d" phonedir.log
	sleep 1s
	echo ""
	echo "Delete Successful!!!" | lolcat -a -d 4
;;
4)	echo "=============================================================================================================================================="
	figlet -c -f big "SAVED CONTACTS" | lolcat -a -d 1
	echo "=============================================================================================================================================="
	echo ""
	cat phonedir.log
;;
5) #break 
figlet -t -k THANKS A LOT!!
sleep 2s
;;
*) 
figlet -c -f small "INVALID OPTION";;
esac;

echo ""
read -p "         Press 5 to Confirm Exit ,Or Press Any Key to return Main Menu " confirm_exit
if [ $confirm_exit -eq 5 ]
then 
clear
sl
clear
break
clear
fi
done
}

sleep 2s
figlet 'PROJECT ON ' -f big | lolcat -a -d 3
sleep 1s
figlet -w 100 PHONE DIRECTORY | lolcat -a -d 3
#figlet -t -k PHONE
#figlet -t -k  DIRECTORY
#figlet 'PROJECT ON ' -f small



#echo "Submitted To:-                                         Submitted By:-              " |lolcat -a -d 50
#echo "Prof. Mohinder Kumar                                   Sonu[2009]" |lolcat -a -d 100
echo "______________________________________________________________________________________________________________________________________________" |lolcat -a -d 50
echo ""
figlet 'SUBMITTED TO:- PROF.   MOHINDER KUMAR ' -f small
sleep 1s
figlet 'SUBMITTED BY:- SONU ' -f small
sleep 1s
read -p "PLEASE ENTER 1 TO PROCEED or PRESS ANY KEY TO EXIT:" usr_cmd

clear
case $usr_cmd in
1) welcome ;;
esac
