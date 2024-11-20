# dropbox-sync

## How to Use the Script
1. Replace the DROPBOX_BASE_PATH variable with the path to your Dropbox folder.
2. Replace the REPOSITORIES array with your repository names and GitHub URLs.
3. Save the script to a file: dropbox-sync.sh
4. Make Your Script Executable: If you haven't done so already, make the script executable:
```bash
chmod +x dropbox-sync.sh
```

5. Open the Crontab File: Open the crontab editor for your user by running:
```bash
crontab -e
```
This command will open your crontab file in your default editor.

6. Add a New Cron Job: Add a line at the end of the crontab file to schedule the script. For example, if you want to run the script every day at 2 AM, you would add:

```bash
0 2 * * * /bin/bash dropbox-sync.sh >> ~/scripts/github_update.log 2>&1
```

Explanation:
0 2 * * *: This specifies the schedule. In this case, it means "at 2:00 AM every day":
0 — Minute (0th minute)
2 — Hour (2 AM)
* — Day of the month (any)
* — Month (any)
* — Day of the week (any)
/bin/bash ~/scripts/update_multiple_github_to_dropbox.sh: The command to execute the script. Ensure to provide the full path to the script.
>> ~/scripts/github_update.log 2>&1: Redirects the output (both stdout and stderr) to a log file named github_update.log in the ~/scripts directory. This will help you track the execution in case of errors.
Save and Exit: Save and exit the crontab file. The exact method to save and exit depends on the editor:

For vim, type :wq and hit Enter.
For nano, press CTRL+X, then Y, and Enter.