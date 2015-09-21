# Music History Part 2

## Branching your project

> **Instructor Suggestion:** 
> Talk to student about Git branching. Why they are created, and how developers use them to intelligently manage their code enhancements.

1. Open a terminal and SSH into your Vagrant machine.
1. `cd musichistory`
1. Create your first branch with `git checkout -b v2.0`.
1. Now type `git branch` and you will see two branches listed: `master` and `v2.0`. There should be an asterisk next to v2 to let you know which branch you are currently working on.
1. When you are all done with your work, you will be merging your code back into the `master` branch.

As you are working on your branch, you will want to occasionally want to push that branch to Github. You can do that with the command `git push origin v2.0`.

## Requirements

Use JavaScript arrays, loops, and innerHTML to show the music you love.

Students must use JavaScript to create a list of songs in the `index.html` file for their Music History project. Have them download the [`resources/js-101.js`](https://raw.githubusercontent.com/nashville-software-school/evening-cohort/master/resources/js-101.js) file, which contains an array of strings with song information.

1. Each student must add one song to the beginning and the end of the array.
1. Loop over the array and remove any words or characters that obviously don't belong.
1. Students must find and replace the `>` character in each item with a `-` character.
1. Must add each string to the DOM in `index.html` in the main content area.

 ------------------------------------------------
|  {Song name} by {Artist} on the album {Album}  | 
 ------------------------------------------------

## Merging your branch

After you've got all of the requirements completed, follow these steps.

1. In your `musichistory` directory, enter the command `git checkout master`. This switches you back to the master branch.
1. `git merge -X theirs v2.0`
1. You'll be presented with a vim screen with a default commit message. Just `:x` to save and exit.

Your branch is now merged into the master branch and you can push the master branch up to Github with `git push origin master`.

