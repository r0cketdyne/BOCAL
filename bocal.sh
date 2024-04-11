#!/bin/bash

# Define the target machines
hosts=( "user@host1" "user@host2" )

# Copy CSGO installation files to each target machine
for host in "${hosts[@]}"; do
    scp /path/to/csgo_files/* "$host:/tmp/"
done

# Install CSGO on each target machine
for host in "${hosts[@]}"; do
    ssh "$host" "sudo dpkg -i /tmp/csgo_package.deb"
done
