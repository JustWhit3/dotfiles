#!/bin/bash

action="create" # get / import

if [ "$action" == "create" ]; then
    dpkg --get-selections > systemfiles/packages.txt
elif [ "$action" == "import" ]; then

    # Read files with installed packages
    while IFS= read -r package || [[ -n "$package" ]]; do
        package_name=$(echo "$package" | awk '{print $1}')
        package_status=$(echo "$package" | awk '{print $2}')
    
        # Check package status
        if [ "$package_status" == "install" ]; then
            echo "Installazione del pacchetto $package_name..."
            sudo apt-get install -y "$package_name"
        fi
    done < systemfiles/packages.txt
fi
