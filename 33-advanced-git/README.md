# Rebasing

You're going to learn how to [rebase](https://www.git-scm.com/book/en/v2/Git-Branching-Rebasing) branches instead of merging them.

In a merge, git performs a three-way diff between the branch you are merging, you're current branch, and the common ancestor where the branch occurred.

In a rebase, git takes all of the commits on another branch, and replay them, one by one, onto your current branch.
