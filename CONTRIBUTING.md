# Contributing to Journal App

This document explains how to contribute to the Journal App project using either local Git commands or the GitHub API.

## Option 1: Local Git Workflow

### Initial Setup (One-time)

1. Clone the repository:
   ```
   git clone https://github.com/sirfulga/journal-app.git
   ```

2. Configure your Git user details:
   ```
   git config user.name "Your Name"
   git config user.email "your.email@example.com"
   ```

### Daily Workflow

1. Pull latest changes:
   ```
   git pull
   ```

2. Make your changes to the files

3. Check status of changes:
   ```
   git status
   ```

4. Add all changes to staging:
   ```
   git add .
   ```

5. Commit your changes:
   ```
   git commit -m "Description of changes"
   ```

6. Push to GitHub:
   ```
   git push
   ```

### Using the Sync Script

A sync script is provided to easily sync changes from your development directory:

1. Run the script:
   ```
   ./sync.sh
   ```

2. Follow the prompts to commit and push your changes

## Option 2: GitHub API Workflow

For direct control over individual files, you can use the GitHub API through various interfaces:

1. GitHub web interface:
   - Navigate to the file you want to edit
   - Click the pencil icon to edit
   - Make your changes
   - Add a commit message
   - Click "Commit changes"

2. GitHub API (programmatically):
   - Useful for automation or when working with AI assistance
   - Allows precise control over individual files
   - Each file modification is a separate commit

## Best Practices

- Use **Option 1 (Local Git)** when:
  - Making changes to multiple files
  - Refactoring code
  - Adding new features
  - Need to test changes locally before pushing

- Use **Option 2 (GitHub API)** when:
  - Making small, isolated changes
  - Updating documentation
  - Working remotely without local setup
  - Collaborating with AI assistance

- Always pull before pushing to avoid conflicts
- Write clear, descriptive commit messages
- Reference issue numbers in commit messages when applicable

## Help and Support

If you need assistance with Git or GitHub, refer to:
- [GitHub Documentation](https://docs.github.com/en)
- [Git Documentation](https://git-scm.com/doc) 