# HTTP (Hypertext Transport Protocol)

## History

## Verbs

GET (read), PUT (update), POST (create), DELETE (delete)

# The Web

## IP based (DNS came later)

* What is an IP address?
* What is DNS?
* Why was it needed?
* How does it work?

## How it works

Walk through the process of a request from a web browser to final render, and all the steps in between.

# API & REST

Oh so fascinating presentation on API and REST.

## Use jQuery to interact with an API over HTTP

> **Instructor Suggestion:** 
> Use the API that is exposed on the Vagrant machine at `http://192.168.33.10:8080/food` to show how to get data from an API using an AJAX call with jQuery.


## Useful public APIs

1. [Weather](https://www.mashape.com/george-vustrey/ultimate-weather-forecasts)
1. [Politics](https://sunlightfoundation.com/api/)
1. [Astronomical data](https://www.mashape.com/helioviewer-project/helioviewer-v1)
1. [Natural language processing](https://www.mashape.com/loudelement/free-natural-language-processing-service)

## Firebase

Now that you've seen a little bit about APIs, you're going to start using a SaaS called Firebase. It allows you to upload data to a remote server and then use an API to perform CRUD actions on that data.

> **Instructor Suggestion:** 
> Have students sign up for a Firebase account, and discourage the usage of the interface for building large JSON documents. Have students build and verify JSON locally and import it. Explain why Firebase hates array.

Import the following JSON file into your Firebase. You'll notice that the format is slightly different from how you were storing them on your local computer. This representation is no longer a key of songs that holds an array. It's now an object that contains other objects. This is because Firebase hates, absolutely, hates arrays, and is also schizophrenic about them, so it's best to avoid then altogether. 

```
{
  "songs": {
    "sharp": {
      "id": 1,
      "name": "Sharp Dressed Man", 
      "artist": "ZZ Top",
      "album": "Eliminator"
    },
    "breakfast": {
      "id": 2,
      "name": "Breakfast in America", 
      "artist": "Supertramp",
      "album": "Breakfast in America"
    },
    "goodbyemary": {
      "id": 3,
      "name": "Goodbye Mary", 
      "artist": "Supertramp",
      "album": "Breakfast in America"
    },
    "carryon": {
      "id": 4,
      "name": "Carry on My Wayward Son", 
      "artist": "Kansas",
      "album": {
        "name": "Overture",
        "year": 1978
      }
    },
    "gimme": {
      "name":"Gimme All Your Lovin",
      "album": {
        "name": "Eliminator",
        "year": 1985
      },
      "artist": "ZZ Top"
    },
    "welcome": {
      "name":"Welcome To The Jungle",
      "album": {
        "name": "Appetite For Destruction",
        "year": 1987
      },
      "artist": "Guns & Roses"
    },
    "ratherbe": {
      "name":"Rather Be",
      "album": {
        "name": "Rather Be",
        "year": 2015
      },
      "artist": "Silent Bandit"
    },
    "thewalk": {
      "name":"The Walk",
      "album": {
        "name": "How Do You Do",
        "year": 2012
      },
      "artist": "Mayer Hawthorne"
    }
  }
}
```

> **Pro tip:** Ever need to convert an object collection into an array of objects, and maintain the original key names for each object?
> 
> ```js
> var arr = Object.keys( x.songs ).map( function( key ){
>   var y = x.songs[ key ];
>   y.key = key;
>   return y;
> });
> ```
