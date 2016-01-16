# Git

A distributed version control system for keeping a history of your code.

# Github

A software as a service (SASS) that allows your to back up your repository to the cloud and share it with other software developers.

## Create a repository
+ Log in to your account on GitHub  
+ In the upper right hand corner, look for this:  
<img src="../images/github-add-repo.jpg" alt="github add repo" style="width: 125px;"/>  
Click the `plus` sign to create a new repository (i.e. `my-blog`)  
+ Click green btn  
+ Highlight https button  
+ Make sure the *Create a README* options is not ticked. Then have them copy pasta the standard commands that Github provides once the repo is created.
+ Follow first set of instrux to copy commands to clipboard  
##### _Example: Do not use these commands_
```
echo "# My Blog" >> README.md
git init
git add README.md
git commit -m "first commit"
git remote add origin git@github.com:username/my-blog.git
git push -u origin master
```
+ In your terminal (`workspace`) paste the copied commands and hit enter  
+ type `ls -a` to see all the files, even hidden ones in your folder. You can see the `.git` folder that contains all the git magic for your `/my-blog` repo  

## Set up your credentials   
+ Copy config files one by one and change to user credentials  
+ User name is user first name, space, last name
+ `git config --global -l`  to see your config settings

To store credentials locally, use this command so that you're not prompted every time you push

`git config credential.helper store`

If you don't want to store them per project, but rather globally in your HOME directory, use this instead.

`git config --global credential.helper store`

## Add, commit, push
+ Type `git status` to see the files you hav added/deleted/modified
+ `git add` plus name of file you want to add to the staging area
+ `git commit -m "my commit message"` to commit the staged areas to git
+ `git push -u origin master` to push the latest commit(s) to your repo on GitHub. After this longhand command, you can use just `git push`  
+ `git log` to see all of your commits for this repo. `q` to quit git log (if log is long enough)
