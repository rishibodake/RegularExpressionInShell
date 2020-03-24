#!/bin/bash -x

#Discription:Check Valid User Registration Patterns
#Author:Hrishikesh Manohar Bodake
#Since:24 March 2020
clear
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
checkFirstName
checkPattern
