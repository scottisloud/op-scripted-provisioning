# Scripted provisioning with the 1Password CLI tool. 

This script uses 1Password's Command Line Tool v2, in combination with Bash, to read names and email addresses from a file on disk and invite each person on the last to join a 1Password Business account. 


## Account setup
1. Create a dedicated 1Password user that can be logged in on the server or device on which you intend to run the script. Ideally this user uses a shared email (e.g., provisioning@example.com) and is not a general-purpose user anyone in your organization is using on a day-to-day basis. Save the credentials for this user as a Login item in the appropriate vault in your 1Password account. 
2. Enable provisioning via the CLI on your 1Password account by visiting https://start.1password.com/settings/provisioning/cli. This will create a group called Provision Manager with a special permission (Provision People) that allows any member of that group to invite users using the 1Password CLI. Only the account you created for the purposes of provisioning users needs to be added to this group. 



## Additional options
Suspend users
deauthorize their devices. 