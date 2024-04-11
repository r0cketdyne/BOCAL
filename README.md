# BOCAL
CSGO intranet comp


BOCAL

1. **Prepare the Installation Files**:
   - Download the CSGO installation files for Linux.

2. **Write the Shell Script**:
   - Create a shell script, let's call it `install_csgo.sh`.
   - Inside the script, include commands to copy the installation files to the target Ubuntu machines and execute any necessary setup commands.
   - Use commands like `scp` to copy files and `ssh` to execute commands remotely.

3. **Set Up SSH Key Authentication**:
   - Ensure that SSH key authentication is set up between the machine where you'll run the script and the target Ubuntu machines.
   - This allows the script to execute commands on the target machines without requiring manual authentication.

4. **Run the Shell Script**:
   - Execute the shell script on the machine where it's located.
   - The script will copy the installation files to the target machines and execute the necessary commands to install CSGO.

5. **Verify Installation**:
   - Once the script execution is complete, verify that CSGO has been installed on the target Ubuntu machines.

Here's a simplified example of what the shell script (`install_csgo.sh`) might look like:

```bash
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
```

Replace `"user@host1"`, `"user@host2"`, `/path/to/csgo_files`, and `csgo_package.deb` with appropriate values for your network and CSGO installation files.

Before running this script, ensure that SSH key authentication is properly set up between the machine running the script and the target Ubuntu machines. Also, make sure that the script has executable permissions (`chmod +x install_csgo.sh`).


relevant documentation:
https://github.com/LANparties/awesome-lanparty-software
https://linuxgsm.com/
https://www.reddit.com/r/GlobalOffensive/comments/2fdkx7/looking_to_setup_csgo_lan_tournament_for/