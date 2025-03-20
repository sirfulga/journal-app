# Sync Script Guide

The Journal App project includes a sync script (`sync.sh`) to help automate the process of keeping the GitHub repository updated with your latest changes from the local development directory.

## Overview

The sync script performs the following operations:

1. **Pulls latest changes** from GitHub to ensure your repository is up-to-date
2. **Syncs files** from your local development directory to the GitHub repository directory
3. **Detects changes** that need to be committed
4. **Prompts for a commit message** if changes are detected
5. **Commits and pushes changes** to GitHub

## Setup Requirements

Before using the sync script, ensure you have:

1. **Two directories set up**:
   - Development directory: Where you work on the app
   - Repository directory: A local clone of the GitHub repository

2. **Git configured** in the repository directory

3. **Script location**: The script should be located in your repository directory

## Script Configuration

By default, the script is configured with these paths:

```bash
# Path to the local development directory 
DEV_DIR="/Users/elenaglavan/Documents/Armand/AGI/journal_app"
REPO_DIR="/Users/elenaglavan/Documents/Armand/AGI/github-repos/journal-app"
```

**Important**: You need to modify these paths to match your local environment if different.

## How to Use

1. **Make the script executable** (one-time setup):
   ```bash
   chmod +x /path/to/sync.sh
   ```

2. **Run the script**:
   ```bash
   /path/to/sync.sh
   ```

3. **Enter a commit message** when prompted if changes are detected

## Customizing Sync Behavior

The script currently syncs the `docs` directory by default. If you need to sync additional directories or files:

1. Open the script in a text editor
2. Locate the comment "Sync other specific directories/files as needed" 
3. Add additional `rsync` commands following this pattern:
   ```bash
   rsync -av "$DEV_DIR/your_directory/" "$REPO_DIR/your_directory/"
   ```

## Troubleshooting

If you encounter issues:

1. **Script Permissions**: Ensure the script is executable
2. **Directory Paths**: Verify that both directories exist and paths are correct
3. **Git Configuration**: Make sure Git is properly configured in the repository directory
4. **Network Issues**: Check your internet connection if pushing to GitHub fails

## Script Location

The sync script is located in the GitHub repository at:
`https://github.com/sirfulga/journal-app/sync.sh` 