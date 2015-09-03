# Back to the Future of JavaScript

Today we're going to rebuild a very basic RequireJS application written with ECMAScript 5 syntax, into ECMAScript6 syntax! It's also going to be written in Angular. You'll be connecting to Firebase. It will be visually structured with Bootstrap.

Clone the [Back to the Future](https://github.com/nashville-software-school/back-to-the-future) repository.

## Bind the application


## Define your application


## Create Views

A view is a named angular module that establishes both the route for loading a particular partial, and the controller for that markup all in on RequireJS module.

```js
define(function(require) {
  var angular = require("angular");
  var angularRoute = require("angular-route");
  var angularfire = require("angularfire");
  var auth = require("authentication");

  angular
    .module("MusicHistoryApp.songList", ["ngRoute"])
    .config(["$routeProvider", function($routeProvider) {
      $routeProvider.when("/", {
        templateUrl: "partials/song-list.html",
        controller: "SongListCtrl",
        controllerAs: "songList"
      });
    }])
    .controller("SongListCtrl", ["$firebaseArray",
      function($firebaseArray) {
        var songsRef = new Firebase("https://nss-demo-instructor.firebaseio.com/songs")
          .orderByChild("uid")
          .equalTo(auth.getUid());

        this.songs = $firebaseArray(songsRef);
      }
    ]);
});
```



# Resources

[Angular RequireJS Seed](https://github.com/tnajdek/angular-requirejs-seed/) - This was the inspiration for the basic plan of this application.

# Challenge \#1

Rebuild this project again, but with Browserify instead of RequireJS.