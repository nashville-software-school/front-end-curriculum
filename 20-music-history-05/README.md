# Music History Part 5

## Set up

Make sure you are in your Vagrant machine, and in the `/vagrant/musichistory` directory. Copy pasta the following commands into your terminal to get automatically set up to get all the third-party dependencies needed for this step of Music History. 

```bash
git checkout -b v5.0
mkdir javascripts
mv *.js javascripts     # This moves all JavaScript files into a new directory
mkdir lib               # lib will hold all third-party JS dependencies
touch lib/package.json  # This file holds all Node library dependencies
echo '{"name": "modules", "version": "0.1.0", "devDependencies": {"grunt": "~0.4.5", "grunt-contrib-jshint": "^0.11.2", "grunt-contrib-nodeunit": "~0.4.1", "grunt-contrib-uglify": "~0.5.0", "grunt-contrib-watch": "^0.6.1", "matchdep": "^0.3.0"} }' > lib/package.json
touch lib/Gruntfile.js   # This file holds all your automation tasks
echo 'module.exports = function(grunt) {
  grunt.initConfig({
    jshint: {
      files: ["./javascripts/**/*.js"]
    },
    watch: {
      javascripts: {
        files: ["./javascripts/**/*.js"],
        tasks: ["jshint"]
      }
    }
  });

  require("matchdep").filterDev("grunt-*").forEach(grunt.loadNpmTasks);
  grunt.registerTask("default", ["jshint", "watch"]);
};' > lib/Gruntfile.js
touch lib/bower.json     # This file holds a record of all Bower libraries you use
echo '{
  "name": "musichistory",
  "version": "5.0.0",
  "authors": [
    "NSS Student <student@nashvillesoftwareschool.com>"
  ],
  "license": "MIT",
  "ignore": [
    "**/.*",
    "node_modules",
    "bower_components",
    "test",
    "tests"
  ],
  "dependencies": {
  }
}' > lib/bower.json
cd lib
bower install jquery requirejs --save && npm install

```

Your task is to take the code that you wrote for Music History 4, where you populated your song list via two AJAX calls, and use RequireJS to accomplish the following.

> **Note:** Doing some of this work may seem too complex for what it actually accomplishes, but you're just learning how to make modular code at this point.

The main module (i.e. `javascripts/main.js`) should have a minimum of three dependencies: `["dom-access", "populate-songs", "get-more-songs"]`.

The `dom-access` module should return a reference to the DOM element in your HTML that will contain the song list. You can use jQuery for this. For example:

```js
define({
  songListElement: $("#elementWhereYouWantSongList")
});
```

The `populate-songs` file should contain the AJAX call to your first JSON file with songs in it. This module should return the array of songs using a callback. Remember callbacks?  Well, it's one of the few mechanisms you can use to pass data retrieved via an asynchronous operation from one Require module to another.

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
The `get-more-songs` file should contain the AJAX call to your second JSON file with songs in it. This module should return the array of songs. It will look practically identical to `populate-songs`, but loading a different JSON file.

The main module (i.e. `javascripts/main.js`) should then specify all three of those files as dependencies, and then use the corresponding return objects from all three dependencies to populate your song list.

```js
require(["dom-access", "populate-songs", "get-more-songs"], 
function(dom, first, second) {

  // Get the first list of songs (passing a callback function reference)
  first.getMeSomeData(function(gimmeBackTheData) {
    console.log("gimmeBackTheData", gimmeBackTheData);
  });

}); 
```

## Using SASS

All your current CSS should be converted into SASS, and you must use SASS from this point forward.

## Using Grunt

As you are working, ensure that your Grunt task is running at all times so that your JavaScript code is automatically checked as you're writing it, and your SASS is compiled into CSS.

> **Note:** After you run your grunt task, if you add more JavaScript files, you need to restart grunt so that it recognizes the new file you added.

## Using Bootstrap

You need to have your application refactored to use the Bootstrap grid system for layout. From this point on, styling of your application is completely up to you, but you must be using Bootstrap grid system for layouts.
