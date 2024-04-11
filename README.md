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

OTHER POSSIBLE IMPLEMENTATIONS::
Download SteamCMD (http://media.steampowered.com/installer/steamcmd.zip)

Download SteamCMD-GUI (https://github.com/DioJoestar/SteamCMD-GUI)

 This will help you setup servers without knowing any command. However, you do need to know how to set them up. But basically, just download both of them, extract and put them in a folder. Run SteamCMD-GUI and install server.
After installing servers, you'll need plugins and it will be Sourcemod and Metamod. Install it into the server's folder using this tutorial (https://wiki.alliedmods.net/Installing_sourcemod).
After installation, install Warmod plugin (https://forums.alliedmods.net/showthread.php?t=225474) (This is the best plugin I've found so far). Read the instruction on the page (especially requirements) and note the Admin commands. Note : To enable pause on the server, type in sv_pausable 1 to enable the command, and pause when you wanna pause.
Run server and test it out if it works. If I'm not wrong, Warmod automatically creates a GOTV server for you so you can enter into the GOTV server and stream it live using software like (https://obsproject.com/) on Twitch or your school's projector.
Security wise, do make sure your WiFi where all the computers are connected to have password enabled. DO NOT allow anyone else to connect into the WiFi without permission as you could face LAN DDoS (I think it's still possible to attack player's PC on the same network). Also, anti-virus.