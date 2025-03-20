#!/bin/bash

# Terminal colors
GREEN='\033[0;32m'
YELLOW='\033[1;33m'
BLUE='\033[0;34m'
RED='\033[0;31m'
NC='\033[0m' # No Color

# Path to the local development directory 
DEV_DIR="/Users/elenaglavan/Documents/Armand/AGI/journal_app"
REPO_DIR="/Users/elenaglavan/Documents/Armand/AGI/github-repos/journal-app"

# Check if directories exist
if [ ! -d "$DEV_DIR" ]; then
  echo -e "${RED}Error: Development directory $DEV_DIR does not exist${NC}"
  exit 1
fi

if [ ! -d "$REPO_DIR" ]; then
  echo -e "${RED}Error: Repository directory $REPO_DIR does not exist${NC}"
  exit 1
fi

# Function to sync changes
sync_changes() {
  echo -e "${BLUE}=== Journal App Repository Sync Tool ===${NC}"
  
  # Get current working directory
  CWD=$(pwd)
  
  # Change to the repository directory
  cd "$REPO_DIR"
  
  # Pull the latest changes from GitHub
  echo -e "${YELLOW}Pulling latest changes from GitHub...${NC}"
  git pull
  
  # Sync changes from the development directory
  echo -e "${YELLOW}Syncing changes from development directory...${NC}"
  
  # 1. Sync docs directory
  if [ -d "$DEV_DIR/docs" ]; then
    echo -e "Syncing docs directory..."
    rsync -av "$DEV_DIR/docs/" "$REPO_DIR/docs/"
  fi
  
  # 2. Sync other specific directories/files as needed
  # Add more rsync commands here for other directories
  
  # Check if there are any changes to commit
  if [ -z "$(git status --porcelain)" ]; then
    echo -e "${GREEN}No changes to commit.${NC}"
  else
    # Prompt for commit message
    echo -e "${YELLOW}Changes detected. Please enter a commit message:${NC}"
    read -p "> " commit_message
    
    if [ -z "$commit_message" ]; then
      commit_message="Updated files from development directory"
    fi
    
    # Add all changes
    git add .
    
    # Commit changes
    git commit -m "$commit_message"
    
    # Push changes to GitHub
    echo -e "${YELLOW}Pushing changes to GitHub...${NC}"
    git push
    
    echo -e "${GREEN}Changes successfully synced with GitHub!${NC}"
  fi
  
  # Return to original directory
  cd "$CWD"
}

# Execute the sync function
sync_changes 