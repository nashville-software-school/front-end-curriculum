# Rebasing

You're going to learn how to [rebase](https://www.git-scm.com/book/en/v2/Git-Branching-Rebasing) branches instead of merging them.

In a merge, git performs a three-way diff between the branch you are merging, you're current branch, and the common ancestor where the branch occurred. In a rebase, git takes all of the commits on another branch, and replay them, one by one, onto your current branch.

Let's try it out

```bash
git checkout master
git branch branch-a
git checkout -b branch-b
echo '# Rebasing' > REBASE.md
git add .
git commit -m "Adding rebase document"
echo '# How to contribute' > CONTRIBUTE.md
git add .
git commit -m "Adding contribution documentation"

git checkout branch-a
echo '# Release notes' > RELEASE.md
git add .
git commit -m "Adding release notes document"

git checkout master
git merge branch-a

git checkout branch-b
git rebase master
```

# Squashing commits with rebase

`git rebase -i {commit id previous to the one you want to squash down to}`

