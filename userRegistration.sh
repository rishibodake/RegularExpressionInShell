#!/bin/bash -x

#Discription:Check Valid User Registration Patterns
#Author:Hrishikesh Manohar Bodake
#Since:24 March 2020
clear
FIRSTNAME=1
LASTNAME=2
EMAIL=3
MOBILENUMBER=4
checkFirstName()  
{
   	read -p "Enter Valid The FirstName:" firstName
   	pattern="^[A-Z][a-zA-Z]{3,}$"   #minimum 3 character and starts with uppercase
   	checkPattern=$firstName 
}
checkPattern() 
{
  	 if [[ $checkPattern  =~ $pattern ]]
   	then
      		echo  Valid FirstName
   	else
      		echo Invalil FirstNAme
      		checkFirstName	
  	 fi
}
checkLastName()
{
	read -p "Enter Valid The LastName:" lastName
   	pattern="^[A-Z][a-zA-Z]{3,}$"   #minimum 3 character and starts with uppercase
   	checkPattern=$firstName 
	checkPattern=$lastName
}
checkEmail()
{
	read -p "Enter Valid  EmailID:" email
	pattern="^[0-9a-zA-Z]+([.]?[a-z0-9A-Z]?)+[@]{1}[a-z]+[.]{1}[a-z]+([.]?[a-z]{2})?$"
	checkPattern=$email
}
checkMobileNumber()
{
	read -p "Enter Valid  MobileNumber:" mobileNumber
	pattern="^[0-9]{2}[ ]{1}[0-9]{10}$"
	checkPattern=$mobileNumber
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
	printf "1: For FirstName\n"
	printf "2: For LastName\n"
	printf "3: For Email\n"
	printf "4: For MobileNumber\n"
	read choice
	case $choice in
			$FIRSTNAME)
				  checkFirstName
				  checkPattern;;
			 $LASTNAME)
				  checkLastName
				  checkPattern;;
			    $EMAIL) 
		            	  checkEmail
				  checkPattern;;
		     $MOBILENUMBER)
				  checkMobileNumber
				  checkPattern;;
			       *)
				  printf "Wrong Choice"
	esac
}

choose

