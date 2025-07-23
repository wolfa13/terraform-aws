# Steps to Create a Git Repo Locally and then Pushing the files to remote Github Repo


# A. On Local Machine

# 1. Create a Local Git Repository
    mkdir my-repo

    cd my-repo

# 2. Initialize the Git repository
    git init

    This creates a hidden .git/ folder.

# 3. Create a branch and Add and Commit Files
    
    git checkout -b dev


    git add . 
        or
    git add file1.txt file2.py


# 4. Commit the files
    git commit -m "Initial commit"




# B. In GitHub 

# 1. Create a Repository on GitHub

        Go to https://github.com

        Click New repository

        Enter:

            Repository name (e.g., my-repo)

            Keep it public/private as per your choice

            DO NOT initialize with README (if you already have files locally)

        Click Create repository

    
    GitHub will now show a page with remote URL and commands.



# C. From your local machine

# 1. Connect Local Repo to GitHub Remote

        Copy the HTTPS or SSH URL from GitHub (e.g., https://github.com/username/my-repo.git)

            git remote add <alias> <url of the remote github repo>

            git remote add origin https://github.com/username/my-repo.git
            
                origin is just a default alias (nickname) Git uses for your remote repository URL (hosted on GitHub, GitLab, etc.).


        Verify it:
            git remote -v

# 2. Push to GitHub

        First time push (set upstream branch):
            
            git push -u origin main

            Here "main" is the branch name
        
        Or push to a branch

            git push -u origin dev
        

        Subsequent pushes can use 
            
            git push


# Note:-

    Syntax to push is 

            git push <remote> <branch>

            here remote is a remote name(alias) like origin, upstream etc









