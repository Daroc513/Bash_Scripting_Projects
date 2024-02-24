#!/usr/bin/env bash

############################-A Daroc Production: Systeminfo Script-###########################################

# Welcome message
echo "Hello, welcome to your Ubuntu server"
sleep 3

# Prompt for user's name
echo "Please enter your name: "
read name

# Display detailed info about the Ubuntu Server
echo "Hello $name - The following is detailed info of your Ubuntu Server"
sleep 3

# Display current date and time
echo "**************- CURRENT DATE AND TIME-**************"
date +"Today is: %d %b - Day: %a - Time: %T"
sleep 3

# Display available disk space
echo "*******************- DISK SPACE AVAILABLE -****************"
df -H | awk 'NR==2 { print "Disk Space Available: Free/Used: " $4 "/" $3 " :GB" }'
sleep 3

# Display user uptime
echo "*************************- USER UPTIME -************************"
uptime
sleep 3

# Display last 3 login details
echo "*************************- LAST 3 LOGIN DETAILS -********************"
last | head -3
sleep 3

# Display currently connected users
echo "*************************- CURRENTLY CONNECTED -***********************"
w

# End of the script
echo "***************************- END -************************************"
