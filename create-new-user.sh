#!/bin/bash
# Ask for the username
read -p "Enter the username : " username

# Check if user already exists
if id "$username" &> /dev/null; then
    echo "User $username already exists."
else
    # Create the user
    sudo useradd $username

    # Create user password
    sudo passwd $username

    echo "User $username created successfully."
fi