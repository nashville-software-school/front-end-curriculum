# Music History Part 4

1. Create a new branch: `git checkout -b version4`
2. Rip out all the styling that you added to implement Flexbox. We won't be using it any more. It might be easier to look at the previous commit on Github by going to the repository home, and clicking on the commits link near the top. Grab all your styling that you had before you implemented Flexbox and put it back in your CSS file.

## Requirements

Time to make Music History into a single page application.

1. In the navigation bar, make sure you have two links labeled "List Music", and "Add Music".
1. Add a DOM element that contains some input fields for the user to enter in the name of a song, the artist for the song, and the album. You do not need to enclose them in a `<form>` element because we're not actually submitting this form anywhere.
1. Add a `<button>` element labeled "Add".
1. Now, the entire container for the form should not be displayed when the user first visits your page. The song list with the corresponding form should be visible.
1. When the user clicks on "Add Music", the list view should be hidden, and the music form should show.
1. When the user clicks on "List Music", the music form should be hidden, and the list view should show.
1. Once the user fills out the song form and clicks the add button, you should collect all values from the input fields, add the song to your array of songs, and update the song list in the DOM.


## Merging

Remember to merge the `version4` branch back into `master` when you're done.