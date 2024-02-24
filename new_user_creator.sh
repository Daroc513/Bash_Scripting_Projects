#!/usr/bin/env bash

############################-A Daroc Production: New User Creator-####################################

echo "Please enter the new users username: "

# Prompts for the new users name
read USER_NAME

# Creates a new user with a home directory
sudo useradd -m $USER_NAME

# Checks if the new user was created successfully
if [[ $? -ne 0 ]]; then
    echo "Error: The new account could not be created."
    exit 1
fi

# Variables
PASS_LENGTH=8
CHARACTER_SET="A-Za-z0-9!@#$%^&*()_+=-<>?"

# Generates a password for the new user
password=$(openssl rand -base64 48 | tr -cd $CHARACTER_SET | head -c $PASS_LENGTH)

#Prompts user to write down new password
echo -e "\nPassword generated. Please write down password and prepare to input"

#Displays generated password then prompts user to change password to generated password
echo "Your Generated password is: PASSWORD"
sleep 5
sudo passwd $USER_NAME

#Displays 10 most recently created users in the /etc/passwd file
echo "Outputting 10 most recent users in the /etc/passwd file"
cat /etc/passwd | tail
sleep 5

#Clears terminal then prompts user to wait(for 3 seconds)
clear
echo "New user account successfully created! Please wait..."
sleep 3

# Display information about the new user account
echo -e "\nPrepare to save the following information:"
sleep 2
echo -e "\nUsername: $USER_NAME"
sleep 2
echo -e "Password: $PASSWORD"
sleep 2
echo -e "Hostname: $(hostname)\n"
