#!/bin/bash

INPUT="users.txt"

while IFS=: read user group
do
    # Check if group exists
    if ! getent group "$group" > /dev/null; then
        echo "Creating group: $group"
        groupadd "$group"
    fi

    # Check if user exists
    if ! id "$user" > /dev/null 2>&1; then
        echo "Creating user: $user"
        useradd -m -g "$group" "$user"

        # Set default password
        echo "$user:Password123" | chpasswd

        # Force password change
        passwd -e "$user"
    else
        echo "User $user already exists"
    fi

done < "$INPUT"
