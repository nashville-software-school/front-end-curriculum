# Music History 7

1. Use jQuery to retrieve the songs from your API.
1. Use the JSON objects to populate Handlebar templates.
1. Use the populated templates to update the browser.
1. Add new songs to your Firebase API with POST AJAX calls.
1. Populate the form fields with data from your API.
1. When "Filter" button is pressed, update the song list with songs that only match the specified criteria.

Make sure that you are using Handlebars for all DOM rendering. Do not fall back to using jQuery to hide and show songs in order to get the filtering to work. If you want to display a subset of songs that match an artist or an album, you need to send a new object to the Handlebar templates.

Example:

```js
var filteredSongs = { songs: { } };

for (var key in existingSongObjectFromFirebase.songs) {
    var currentSong = existingSongObjectFromFirebase.songs[key];

    // Check if the currentSong.artist key value matches what the user selected
    // If it does, add the current song to the `filteredSongs.song` object
}

// Send filteredSongs to your Handlebar templates
require("path/to/template", function(tpl) {
    $("#someDOMElement").append(tpl(filteredSongs));
});
```

## Post promises requirements

These requirements only apply after we cover promises in class.

1. When you add, or delete, a song, the modules that perform the XHRs should return promises.
1. After the promise is resolved, you should display a [Bootstrap modal](http://getbootstrap.com/javascript/#modals) window to provide feedback on if the operation was successful, or not.