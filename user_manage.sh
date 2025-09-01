#!/bin/bash

# Function to add a new user
add_user() {
    read -p "Enter username to add: " username
    sudo useradd "$username"
    if [ $? -eq 0 ]; then
        echo "User $username added successfully."
    else
        echo "Failed to add user $username."
    fi
}

# Function to delete a user
delete_user() {
    read -p "Enter username to delete: " username
    sudo userdel -r "$username"
    if [ $? -eq 0 ]; then
        echo "User $username deleted successfully."
    else
        echo "Failed to delete user $username."
    fi
}

# Function to modify a user
modify_user() {
    read -p "Enter username to modify: " username
    echo "1. Change username"
    echo "2. Change password"
    read -p "Choose option: " choice
    case $choice in
        1)
            read -p "Enter new username: " newname
            sudo usermod -l "$newname" "$username"
            echo "Username changed successfully."
            ;;
        2)
            sudo passwd "$username"
            ;;
        *)
            echo "Invalid option."
            ;;
    esac
}

# Function to display user info
display_user() {
    read -p "Enter username to display info: " username
    id "$username"
    echo "Home directory: $(eval echo ~$username)"
    echo "Shell: $(getent passwd $username | cut -d: -f7)"
}

# Main menu
while true; do
    echo "---------------------------"
    echo "User Management Menu"
    echo "1. Add User"
    echo "2. Delete User"
    echo "3. Modify User"
    echo "4. Display User Info"
    echo "5. Exit"
    echo "---------------------------"
    read -p "Enter your choice [1-5]: " option

    case $option in
        1) add_user ;;
        2) delete_user ;;
        3) modify_user ;;
        4) display_user ;;
        5) echo "Exiting..."; exit 0 ;;
        *) echo "Invalid choice." ;;
    esac
done
