# Music History Part 4

1. Create a new branch: `git checkout -b version4`
2. Rip out all the styling that you added to implement Flexbox. We won't be using it any more. It might be easier to look at the previous commit on Github by going to the repository home, and clicking on the commits link near the top. Grab all your styling that you had before you implemented Flexbox and put it back in your CSS file.

## Requirements

Time to make Music History into a single page application.

1. In the navigation bar, make sure you have two links labeled "List Music", and "Add Music".
1. Add a DOM element that contains some input fields for the user to enter in the name of a song, the artist for the song, and the album. You do not need to enclose them in a `<form>` element because we're not actually submitting this form anywhere.
1. Add a `<button>` element at the bottom of the input fields labeled "Add".
1. The input fields and the add button make up the *Add Music View*.
1. The existing view - the combination of the filter form and the song list - will be referred to as the *List Music View*.
1. The *Add Music View* should not appear when the user first visits your page. The song list with the corresponding filter form should be visible.
1. When the user clicks on "Add Music" in the navigation bar, the *List Music View* should be hidden, and the *Add Music View* should be shown.
1. When the user clicks on "List Music" in the naviation bar, the *Add Music View* should be hidden, and the *List Music View* should be shown.
1. Once the user fills out the song form and clicks the add button, you should collect all values from the input fields, add the song to your array of songs, and update the song list in the DOM.


## Merging

Remember to merge the `version4` branch back into `master` when you're done.