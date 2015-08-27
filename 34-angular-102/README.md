# Angular102

## Angular route

Install the Angular Route module. This library allows you to easily built a SPA (Single Page Application) where you switch out one view for another - without every refreshing the browser - and break up your HTML into what are called *partials*.

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

And now open the `song-list.html` file and create a *partial* for listing songs.
```html
<div>
  <input type="text" ng-model="query" />
</div>

<div ng-repeat="song in songs | filter: query">
  <a href="#/songs/{{ song.id }}">{{ song.name }}</a>
</div>
```

Notice anything strange about the anchor tag there? That's a strange looking URL for the `href` property. Well, since you're now starting the process of building a SPA, then you don't want any link to actually refresh the browser, and so by prepending the new location with #, you ensure that. You'll see this in action as we set up the routing.



## Factories

A factory is a way that you can send data between different controllers. Since each controller has its own scope, and another controller cannot access it, a factory acts as the intermediary, an escrow, between controllers.

Here's an example.

Let's say that you have two controllers, `SongListCtrl`, which will contain all the logic needed to list your songs, and `SongDetailCtrl` which will contain all the logic for displaying the details of individual songs. You don't want to make an XHR call in each of those controllers to get the list of songs. That's duplicating code, and that's *bad*.

You want one, common, mechanism that both controllers can use to get the list of songs. The factory is born. Let's look at a very simplistic construct, before we get to the XHR example.

```js
app.factory("simple-songs", function() {
  var song_list = [
  { id: 1, name: "Me", album: "Album", artist: "Artist" },
  { id: 2, name: "You", album: "Album", artist: "Artist"  },
  { id: 3, name: "And I", album: "Album", artist: "Artist"  }
  ];

  return {
    getSongs: function() {
      return song_list;
    },
    getSong: function(id) {
      return song_list.filter(function(song){
        return song.id === id;
      })[0];
    }
  }
});
```

Now, in each of my controllers, I get all songs - which is what I want in `SongListCtrl` - or just get one song - which is what I want in `SongDetailCtrl`. The factory is a singleton, meaning there's only, ever, one instance of this factory created, so you'll never have to worry about which version of the song list you're working with, because there's only one version. Period.

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