### About git 
Git was created by who created Linux

GitHub portfolio helps people to see on which projects you have worked on. This page is created to keep references which I need to see from time to time

### VCS - version control system
Before version control 
1. Diffing files: diff command in linux can be used to do this `diff file1.py file2.py`
    1. diff with -u `diff oldfile.py new_file > change.diff`
    2. generation of diff file or patch file.
2. patch with the help of diff file: `patch file1.py < file1.diff`
3. wdiff
4. graphical tools - 

Version control system:
1. Git: you can use with or without network connection. Git official website is git-scm.com
2. subversion
3. mercurial

### installing Git


### using Git
1. `git config --global user.email user@email.com`
2. `git config - global user.name username`
3. now you can clone or create a git repository
    1. creating a new repository
        1. `mkdir checks`
        2. `cd checks`
        3. `git init` - we are initialising this directory as git repository
    2. clone a repository
4. add the file `git add file`, it adds file to staging areas. Unless a new file is added it wont be tracked.
5. commit the git `git commit`, committing means saving the changes you made or taking a snapshot at that time
    1. add the commit message `git commit -m 'msgs of commit`. Without the msg it will abort commiting
6. tracking the files
    1. files can be at three scenario , modified, staged, commit
    2. `git status` tells any uncommited file or unstaged file or modified file
    3. 


### when remote is ahead by commits
1. first way is saving the current changes and reapplying them after you pull
    1. `git stash` saves changes locally
    2. git pull
    3. git stash pop 
2. reject the changes and hard pull

### when your branch is ahead of remote and remote also have different commits
1. using stasch
2. rebasing
    1. `git pull --rebase`
    2. if merge conflicts are there, solve manually
    3. add conflicting files `git add <file name>`
    4. `git rebase --continue`
    

### clearing stash
1. git stash clear

