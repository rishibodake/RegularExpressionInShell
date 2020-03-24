#!/bin/bash -x

#Discription:Check Valid User Registration Patterns
#Author:Hrishikesh Manohar Bodake
#Since:24 March 2020
clear
FIRSTNAME=1
LASTNAME=2
checkFirstName()  
{
   	read -p "Enter Valid The FirstName:" firstName
   	pattern="^[A-Z][a-zA-Z]{3,}$"   #minimum 3 character and starts with uppercase
   	checkPattern=$firstName 
}
checkLastName()
{
	read -p "Enter Valid The LastName:" lastName
   	pattern="^[A-Z][a-zA-Z]{3,}$"   #minimum 3 character and starts with uppercase
   	checkPattern=$firstName 
	checkPattern=$lastName
}
checkPattern() 
{
   	if [[ $checkPattern  =~ $pattern ]]
   	then
      		echo  Valid Input
   	else
      		echo Invalil Input
  	 fi
}
choose()
{
	printf "1: For FirstName/n"
	printf "2: For LastName/n"
	read choice
	case $choice in
			$FIRSTNAME)
				  checkFirstName
				  checkPattern;;
			$LASTNAME)
				  checkLastName
				  checkPattern;;
				*)
				  printf "Wrong Choice"
	esac
}

choose

