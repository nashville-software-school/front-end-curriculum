# Music History Part 6

## Set up

If you are still using Vagrant, make sure you are in your Vagrant machine, and in the `/vagrant/musichistory` directory. If you are not using Vagrant, make sure you are in `~/workspace/musichistory`.

### Create a new branch

`git checkout -b version6`

### Update your .gitignore file for SASS

Add the following line to .gitignore

```
.sass-cache
```

Your task is to take the code that you wrote for Music History 4, where you populated your song list via two AJAX calls, and use RequireJS to accomplish the following.

> **Note:** Doing some of this work may seem too complex for what it actually accomplishes, but you're just learning how to make modular code at this point.

The main module (i.e. `javascripts/entry.js`) should have a minimum of two dependencies: `["populate-songs", "get-more-songs"]`.

The `populate-songs` module should contain the XHR to your first JSON file with songs in it. This module should return the array of songs using a callback. Remember callbacks?  Well, it's one of the few mechanisms you can use to pass data retrieved via an asynchronous operation from one Require module to another.

```js
define(["jquery"], function($) {
  return {
    getMeSomeData: function(callbackFunctionReference) {
      $.ajax({...}).done(function(jsonDataSentByjQuery) {
        callbackFunctionReference(jsonDataSentByjQuery);
      }
    }
  }
});
```

The `get-more-songs` file should contain the XHR to your second JSON file with songs in it. This module should return the array of songs. It will look practically identical to `populate-songs`, but loading a different JSON file.

The main module (i.e. `javascripts/entry.js`) should then specify both of those files as dependencies, and then use the corresponding return objects from both dependencies to populate your song list.

You can remove the "Load more songs" button if you wish, but is not necessary.

```js
require(["populate-songs", "get-more-songs"], 
function(dom, first, second) {

  // Get the first list of songs (passing a callback function reference)
  first.getMeSomeData(function(gimmeBackTheData) {
    console.log("gimmeBackTheData", gimmeBackTheData);
  });

  // Get the second list of songs
  

  // Update the DOM to show the songs that are loaded from the XHR calls

}); 
```

## Using SASS

All your current CSS should be converted into SASS, and you must use SASS from this point forward.

## Using Grunt

As you are working, ensure that your Grunt task is running at all times so that your JavaScript code is automatically checked as you're writing it, and your SASS is compiled into CSS.

> **Note:** After you run your grunt task, if you add more JavaScript files, you need to restart grunt so that it recognizes the new file you added.

## Using Bootstrap

You need to have your application refactored to use the Bootstrap grid system for layout. From this point on, styling of your application is completely up to you, but you must be using Bootstrap grid system for layouts.
