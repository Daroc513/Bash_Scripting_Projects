#!/usr/bin/env bash

######################-A Daroc Production: Password Generator-###################

#Displays a message indicating the purpose of the script
echo "This is a password generator"

#Prompts the user to enter the desired length of the password
echo "Please enter the desired legnth of your password: "

#Creates a variable and reads the users input for the password length
read PASS_LENGTH

#Variable defines the set of characters to be used for password generation
CHARACTER_SET="A-Za-z0-9!@#$%^&*()_+=-<>?"

#For loop to generate a password in whatever length the user inputed
for p in $(seq 1);
do
    #"tr" to translate characters fro, the random base64-encoded string
    ##into desired character set and "head" to limit length
    password=$(openssl rand -base64 48 | tr -cd $CHARACTER_SET | head - c$PASS_LENGTH)

#Displays generated password
echo "Your generated password is: $password"