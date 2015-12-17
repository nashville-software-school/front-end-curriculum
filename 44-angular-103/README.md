# Angular 103

## Handling authentication in Angular/Firebase application

The `onAuth` listener will be very helpful when dealing with authentication. You can utilize the `run()` method on a module, which executes every time the page is loaded, or a view is switched.

```js
var songApplication = angular.module("SongApp", []);

app.config(['$routeProvider',
  function($routeProvider) {
    $routeProvider.
      when('/start', {
        templateUrl: 'partials/song-list.html',
        controller: 'SongCtrl'
      }).
      when('/login', {
        templateUrl: 'partials/authenticate.html',
        controller: 'AuthCtrl'
      });
  }
]);

songApplication.run(["$location", function ($location) {
  var firebaseBaseRef = new Firebase("url");

  firebaseBaseRef.onAuth(function (authData) {
    if (authData) {
      $location.url("/start");
    } else {
      $location.url("/login");
    }
  });
}]);
```

## AngularFire

Follow the general guidelines in the [AngularFire Quick Start](https://www.firebase.com/docs/web/libraries/angular/quickstart.html), but be sure to use your Bower dependencies, and not their CDN links.

Use [Firebase Arrays](https://www.firebase.com/docs/web/libraries/angular/guide/synchronized-arrays.html) instead of objects. They are easier to work with for your browser applications.

### Loading songs

To start using AngularFire, you need to include it as a dependency to your application.

```js
var app = angular.module("SongApp", ['firebase', 'ngRoute']);
```

Now you can include `$firebaseArray` as an object to use in your controllers.

```js
app.controller("SongCtrl", 
  ["$scope", 
   "$firebaseArray", 
  function($scope, $firebaseArray) {

  // Just like in the RequireJS version of Music History, make a reference
    var ref = new Firebase("https://nss-demo-instructor.firebaseio.com/songs");

  // Instead of snapshot.val(), use this syntax to get songs
    $scope.songs = $firebaseArray(ref);

  }
]);
```

### Showing individual songs

```js
app.controller("SongDetailCtrl",
  ["$scope", "$routeParams", "$firebaseArray",
  function($scope, $routeParams, $firebaseArray) {
    $scope.selectedSong = {};
    // $routeParams allows you to grab the value of the current route parameters.  
    // So, here we can pluck out the id of the particular song,  
    // because we set it in the href of the link from song-list partial.
    $scope.songId = $routeParams.songId;

    var ref = new Firebase("https://nss-demo-instructor.firebaseio.com/songs");
    $scope.songs = $firebaseArray(ref);

  // Make sure you use the $loaded promise handler, which waits
  // for all songs to be loaded from the reference before you try
  // to grab the record the user wanted.
    $scope.songs.$loaded()
      .then(function() {
      // The $getRecord method on a $firebaseArray is very useful
        $scope.selectedSong = $scope.songs.$getRecord($scope.songId);
      })
      .catch(function(error) {
        console.log("Error:", error);
      });
  }]
);
```

### Create the route for viewing an individual song

Add it to the existing `app.config`

```js
app.config(['$routeProvider',
  function($routeProvider) {
    $routeProvider
      .when('/songs/list', {
        templateUrl: 'partials/song-list.html',
        controller: 'SongListCtrl'
      })
      .when('/songs/new', {
        templateUrl: 'partials/song-form.html',
        controller: 'AddSongCtrl'
      })
      // New route for viewing a single song  
      // Here we set the route with the `:songId` parameter,  
      // which gets matched in the controller to the href we  
      // defined in the songs-list partial: href="#/songs/{{ song.$id }}
      .when('/songs/:songId', {
        templateUrl: 'partials/song-detail.html',
        controller: 'SongDetailCtrl'
      })
      .otherwise({ redirectTo: '/songs/list' });
  }]);
```
> **partials/song-detail.html**

Just one example of how to display song info. 
```html
<h2>{{ selectedSong.title }}</h2>
<h3>by {{ selectedSong.artist}}</h3>
<h4>from the {{ selectedSong.year}} album <em>{{ selectedSong.album }}</em></h4>
```


### Adding a new song

> **partials/song-form.html**

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

> **app/controllers/SongFormCtrl.js**

```js
app.controller("SongFormCtrl", ["$scope", "$firebaseArray",
  function($scope, $firebaseArray) {

    var ref = new Firebase("https://nss-demo-instructor.firebaseio.com/songs");
    $scope.songs = $firebaseArray(ref);
    $scope.newSong = {};

    $scope.addSong = function() {
      $scope.songs.$add({
        artist: $scope.newSong.artist,
        name: $scope.newSong.name,
        album: {
          name: $scope.newSong.albumName,
          year: $scope.newSong.albumYear
        }
      });
    };
  }
]);
```
