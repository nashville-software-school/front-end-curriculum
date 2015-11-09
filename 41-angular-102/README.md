# Angular102

## Angular route

Install the Angular Route module. This library allows you to easily build a SPA (Single Page Application) where you switch out one view for another - without ever refreshing the browser - and break up your HTML into what are called *partials*.

```bash
bower install angular-route --save
```

Include the JavaScript file.
```html
<script src="lib/bower_components/angular-route/angular-route.js"></script>
```

Next, you add the `ng-view` helper to an empty element on your page. Later, when you create your partials and have configured Angular Route when to show each one, the HTML in those partials will be injected into this DOM element.

```html
<div ng-view></div>
```

### Partials

Partials are just like the Handlebar files you created in the previous Music History version. You'll be creating (usually) small HTML files that will be responsible for doing one thing only. For example, one file for showing a list of songs, another to show a form for creating a song, and another for displaying the details of a song.

```bash
mkdir partials
touch partials/song-list.html
```

Open your JSON file(s) and add an unique `id` key to each your song objects. Just start at 1 and increment.

```js
{
  "songs": [
    {
      "id": 1,
      "name": "Sharp Dressed Man", 
      "artist": "ZZ Top",
      "album": "Eliminator"
    },
    ...
```

Next comment out all of your existing HTML in your `index.html` file. We're going to start using partials to display information. Here's what it should look like.

```html
<!doctype html>

<html lang="en">
<head>
  <meta charset="utf-8">
  <title>NSS Starter Kit - Angular</title>
  <link rel="stylesheet" type="text/css" href="styles/main.css">
</head>

<body ng-app="SongApp">

  <div ng-view></div>

  <script src="lib/bower_components/jquery/dist/jquery.min.js"></script>
  <script src="lib/bower_components/angular/angular.min.js"></script>
  <script src="lib/bower_components/angular-route/angular-route.min.js"></script>

  <script src="app/app.js"></script> <!---The entry point for all the other other modules in the app. -->
  <script src="app/controllers/SongCtrl.js"></script> <!-- We will actually add this file in a moment -->
</body>
</html>
```

Next, open the `song-list.html` file and create a *partial* for listing songs.

```html
<div>
  <input type="text" ng-model="query" />
</div>

<div ng-repeat="song in songs | filter: query">
  <a href="#/songs/{{ song.id }}">{{ song.name }}</a>
</div>
```

Notice anything strange about the anchor tag there? That's a strange looking URL for the `href` property. Well, since you're now starting the process of building a SPA, then you don't want any link to actually refresh the browser, and so by prepending the new location with #, you ensure that. You'll see this in action as we set up the routing.

### Initial route

Now that you have a partial, let's start using Angular routing to show it in the element with the `ng-view` attribute. First, we add an add in a new configuration object for our application, and set `$routeProvider` as a dependency. The `module.config` method is a how we define, or set, configuration options before anything else happens in the app. Routes are certainly something we want established before the user gets to interact with the UI.


```js
app.config(['$routeProvider',
  function($routeProvider) {
    $routeProvider.
      when('/songs/list', {
        templateUrl: 'partials/song-list.html',
        controller: 'SongCtrl'
      });
  }]);
```

What this does is make Angular now watch the values URL in the browser, and when it changes, it tries to match the pattern `/songs/list`. If it matches, it loads the HTML in our partial, and then binds that DOM to the `SongCtrl` controller. Try it out by putting this URL in your browser `http://localhost:8080/#/songs/list`, or if you're on your Vagrant machine `http://192.168.33.10:8080/#/songs/list`.

It should display your list of songs.

### Adding a new song

Add a new route for `/songs/new` and load the song form partial.

```js
app.config(['$routeProvider',
  function($routeProvider) {
    $routeProvider.
      when('/songs/list', {
        templateUrl: 'partials/song-list.html',
        controller: 'SongCtrl'
      }).
      when('/songs/new', {
        templateUrl: 'partials/song-form.html',
        controller: 'SongCtrl'
      });
  }]);
```

> **File: ** partials/song-form.html

```html
<section>
  <div>
    Song name: <input type="text" ng-model="newSong.name" />
  </div>
  <div>
    Album Name: <input type="text" ng-model="newSong.albumName" />
  </div>
  <div>
    Album Year: <input type="text" ng-model="newSong.albumYear" />
  </div>
  <div>
    Artist: <input type="text" ng-model="newSong.artist" />
  </div>
  <button ng-click="addSong()">Add Song</button>
</section>
```

> **File:** app/controllers/SongCtrl.js

```js
app.controller("SongCtrl", ["$scope",
  function($scope) {

    /*
      Add the following code
    */
    $scope.newSong = { artist: "", album: "", name: ""};

    $scope.addSong = function() {
      $scope.songs.$add({
        artist: $scope.newSong.artist,
        name: $scope.newSong.name,
        album: $scope.newSong.album
      });
    };
  }
]);
```

Now, you may be wondering at this point if it's possible to break up this controller. One for managing the list of songs, and another for managing the song form. Yes, of course it is, and it's recommended, but then we run into the problem of how each of those controllers can read, and modify the same array of songs. Since the `$scope` object is not accessible outside the controller, if we read our songs from the JSON file in the song list controller, then somehow we have to share that with the song form controller so that it can add a new song to it.

## Factories

A factory is a way that you can send data between different controllers. Since each controller has its own scope, and another controller cannot access it, a factory acts as the intermediary, an escrow, between controllers.

Here's an example.

Let's say that you have two controllers, `SongListCtrl`, which will contain all the logic needed to list your songs, and `SongDetailCtrl` which will contain all the logic for displaying the details of individual songs. You don't want to make an XHR call in each of those controllers to get the list of songs. That's duplicating code, and that's *bad*.

You want one, common, mechanism that both controllers can use to get the list of songs. The factory is born. Let's look at a very simplistic construct, before we get to the XHR example.

```js
app.factory("simple-songs", function() {
  var song_list = [
    { id: 1, name: "99 Problems", album: "Black", artist: "JayZ" },
    { id: 2, name: "Helter Skelter", album: "White", artist: "Beatles"  },
    { id: 3, name: "99 Problems", album: "Grey", artist: "DJ Danger Mouse"  }
  ];

  return {
    getSongs: function() {
      return song_list;
    },
    getSong: function(id) {
      return song_list.filter(function(song){
        return song.id === id;
      })[0];
    },
    addSong: function(song) {
      song_list.push(song);
      return song_list;
    }
  }
});
```

Now, in each of your controllers, you can get all songs, which is what you want in `SongListCtrl` , just get one song, which is what you want in `SongDetailCtrl`, or add a new song, which is what you want in `SongFormCtrl` . The factory is a singleton, meaning there's only, ever, one instance of this factory created, so you'll never have to worry about which version of the song list you're working with, because there's only one version. Period.

##### SongListCtrl.js

```js
app.controller("SongListCtrl", 
  // Notice the new syntax. Since I'm including one of my own dependencies
  // then I need to include each one in array of strings (just like RequireJS)
  // and have a matching argument in the callback function.
  [
    "$scope", 
    "simple-songs", 
    function($scope, simple_songs) {
      $scope.song_list = simple_songs.getSongs();  // Returns all songs
    }
  ]
);
```

##### SongDetailCtrl.js

```js
app.controller("SongDetailCtrl", 
  [
    "$scope", 
    "simple-songs", 
    function($scope, simple_songs) {
      $scope.song_list = simple_songs.getSong(1); // Returns the song with id:1
    }
  ]
);
```

##### SongFormCtrl.js

```js
app.controller("SongFormCtrl", 
  [
    "$scope", 
    "simple-songs", 
    function($scope, simple_songs) {
      $scope.newSong = { artist: "", album: "", name: ""};

      $scope.addSong = function() {
        simple_songs.addSong({
          artist: $scope.newSong.artist,
          name: $scope.newSong.name,
          album: $scope.newSong.album
        });
      };
    }
  ]
);
```

## Using $http instead of $.ajax()

Angular, of course, provides their own XHR method, so instead of using `$.ajax()` like we've been doing, we must **use all the Angular** and use the built-in `$http` object.

```js
// Return a promise for our async XHR
return $q(function(resolve, reject) {
  $http
    .get('./data/songs.json')
    .success(
      function(objectFromJSONFile) {
        resolve(objectFromJSONFile.songs);
      },function(error) {
        reject(error);
      }
    );
});
```
