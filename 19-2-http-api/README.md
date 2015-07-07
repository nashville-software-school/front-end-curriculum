# HTTP (Hypertext Transport Protocol)

## History

## Verbs

# The Web

## IP based (DNS came later)

# API

## What is it (presentation)

## Use jQuery to interact with an API over HTTP

> **Instructor Suggestion:** 
> Use the API that is exposed on the Vagrant machine at `http://192.168.33.10:8080/food` to show how to get data from an API using an AJAX call with jQuery.


## Firebase

> **Instructor Suggestion:** 
> Have students sign up for a Firebase account, but you may want to discourage the usage of the interface for building large JSON documents. Have students build and verify JSON locally and import it, or use the programmatic methods to add documents.

1. Go through the [Quickstart Guide](https://www.firebase.com/docs/web/quickstart.html)
1. Create a `music-history` key in Firebase UI.
1. Create a database reference for music.
  ```js
  var ref = new Firebase("https://{subdomain}.firebaseio.com/music-history");
  var music = ref.child("music");
  ```
1. Create some music entries.
  ```js
  music.set({
    escape: {
      release_date: "June 23, 1982",
      artist_name: "Journey"
    },
    eliminator: {
      release_date: "December 9, 1985",
      artist_name: "ZZ Top"
    }
  });
  ```


## Useful public APIs

1. [Weather](https://www.mashape.com/george-vustrey/ultimate-weather-forecasts)
1. [Politics](https://sunlightfoundation.com/api/)
1. [Astronomical data](https://www.mashape.com/helioviewer-project/helioviewer-v1)
1. [Natural language processing](https://www.mashape.com/loudelement/free-natural-language-processing-service)

# REST (Representational State Transfer)

