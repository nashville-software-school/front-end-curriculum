# Music History Part 5

## Using RequireJS

1. Create a new directory `workspace/music-history-5` and `cd` into it.
1. Copy your HTML document from Music History 4 into this directory.
1. Create a `javascripts` directory.
1. Copy your JavaScript file(s) from Music History 4 into the `javascripts` directory.
1. In the `music-history-5` directory, `touch package.json` and populate it with the code from Modern Tooling module.
1. In your Vagrant guest machine, run `npm install` in the `music-history-5` directory..
1. `touch Gruntfile.js` and populate it with the code from Modern Tooling module.
1. In your Vagrant guest machine, run `bower init` in the `music-history-5` directory, and accept defaults.
1. In your Vagrant guest machine, install jQuery via Bower.
1. In your Vagrant guest machine, install RequireJS via Bower.


Your task is to take the code that you wrote for Music History 4, where you populated your song list via two AJAX calls, and use RequireJS to accomplish the following.

1. The main module (i.e. `javascripts/main.js`) should have a minimum of three dependencies: `["dom-access", "populate-songs", "get-more-songs"]`.
1. The `dom-access` module should return a reference to the DOM element in your HTML that will contain the song list.
1. The `populate-songs` file should contain the AJAX call to your first JSON file with songs in it. This module should return the array of songs.
1. The `get-more-songs` file should contain the AJAX call to your second JSON file with songs in it. This module should return the array of songs.
1. The main module (i.e. `javascripts/main.js`) should then use the return objects from all three dependencies to populate your song list.

## Using SASS

All your current CSS should be converted into SASS, and you must use SASS from this point forward.

## Using Grunt

As you are working, ensure that your Grunt task is running at all times so that your JavaScript code is automatically checked as you're writing it, and your SASS is compiled into CSS.

> **Note:** After you run your grunt task, if you add more JavaScript files, you need to restart grunt so that it recognizes the new file you added.

## Using Bootstrap

You need to have your application refactored to use the Bootstrap grid system for layout. From this point on, styling of your application is completely up to you, but you must be using Bootstrap grid system for layouts.
