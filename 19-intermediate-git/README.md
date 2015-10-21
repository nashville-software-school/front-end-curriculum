# Intermediate Git usage

## Review of the basics

1. `git clone {url}` allows you to copy an existing Github project to your local machine.
1. `git branch` shows current, local branches and highlights the one you are working on.
2. `git branch -r` shows remote origin (i.e. Github) branches that you may, or may not, have pulled down to your local machine.
3. `git branch {label}` creates a new branch that is a snapshot of the current branch.
4. `git checkout {branch}` switches between branches.
3. `git fetch` pulls down the current branch from the remote origin, but *does not modify* your current working copy.
4. `git merge {branch}` merges the code from the target branch into the one you are currently on.
5. `git pull origin {branch}` is a combination of a *fetch* and a *merge*.
6. `git add .` adds any new files, or modified files, to a staging state so that it will be included in the next commit.
7. `git commit -m {message}` commits all staged files as the most current snapshot of your project.
8. `git push origin {branch}` sends your code to the corresponding branch on Github.

## Amending a commit

So you already committed your code, but a few seconds later, you see that there's a typo, so instead of doing another add/commit/push cycle, you can quickly amend the previous commit.

```bash
git commit -m "Added feature to save music to the database"
git add music.js # Oops, there was a typo you had to fix
git commit --amend # This replaces the previous commit
```

You can also use amend to update the message of the commit.

```bash
git commit --amend -m "Added feature to save music to Firebase"
```