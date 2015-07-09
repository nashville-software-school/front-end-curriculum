# Git

A distributed version control system for keeping a history of your code.

# Github

A software as a service (SASS) that allows your to back up your repository to the cloud and share it with other software developers.

## Clone over HTTPS

To store credentials locally, use this command so that you're not prompted every time you push

`git config credential.helper store`

## Create a Github repository

Show students how to create one in the Github web UI. The repository should be named `music-history`. Make sure the *Create a README* options is not ticked. Then have them copy pasta the standard commands that Github provides once the repo is created.

##### Example: Do not use these commands
```
echo "# Music History" >> README.md
git init
git add README.md
git commit -m "first commit"
git remote add origin git@github.com:username/music-history.git
git push -u origin master
```
