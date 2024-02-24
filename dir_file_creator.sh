#!/usr/bin/env bash

###########################-A Daroc Production: Directory and File creator Script-##################################

# Welcome message
echo "Welcome To The Project Creator!"

# Pause for 2 seconds
sleep 2

# Change to home directory
echo "Changing to home directory"
cd
sleep 2

# Prompt user to enter the directory name
echo "Please Enter Your Directory name: "
read directoryname
echo "Creating directory, please wait..."
sleep 3

# Check if the directory exists or create it
if mkdir "$directoryname"; then
    echo "Directory '$directoryname' created successfully."
else
    echo "Error: Unable to create directory '$directoryname'. Exiting."
    exit 1
fi

echo "Changing directory, please wait..."
sleep 2

# Change into the created directory, exit if unsuccessful
cd "$directoryname" || {
    echo "Error: Unable to change into directory '$directoryname'. Exiting."
    exit 1
}

# Prompt user to enter the file name
echo "Please enter file name: "
read filename
echo "Creating file, please wait..."
sleep 3

# Check if the file exists or create it
if touch "$filename"; then
    echo "File '$filename' created successfully."
else
    echo "Error: Unable to create file '$filename'. Exiting."
    exit 1
fi

# Vim to the file
echo "File created. Opening in Vim, please wait..."
sleep 2

# Open the created file in Vim
vim "$filename"
