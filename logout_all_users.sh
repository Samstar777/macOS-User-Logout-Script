#!/bin/bash

# Script to detect and log out all currently logged-in users on macOS
# Created by Salim Ukani aka Samstar777

# Function to log out a user
logout_user() {
    local user=$1
    echo "Logging out user: $user"
    launchctl bootout user/"$(id -u "$user")" 2>/dev/null
    if [[ $? -eq 0 ]]; then
        echo "Successfully logged out $user."
    else
        echo "Failed to log out $user."
    fi
}

# List of currently logged-in users (excluding system processes)
logged_in_users=$(who | awk '{print $1}' | sort | uniq)

# Iterate over each logged-in user
for user in $logged_in_users; do
    # Skip root and system-specific processes
    if [[ "$user" != "root" && "$user" != "loginwindow" ]]; then
        logout_user "$user"
    fi
done

echo "All users have been logged out."
