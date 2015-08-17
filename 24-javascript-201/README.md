# JavaScript 201

## lodash

## Promises

We will be using the [Q](https://github.com/kriskowal/q) library to work with Promises.

A Promise is basically a fancy callback function that maintains its own internal state - pending, rejected and resolved. So instead of using a callback function like we have until this point...

```js
function get_some_api_data(callback) {
  $.ajax(...).done(function(api_data) {
    callback.call(this, api_data);
  };
}
```

We can now return a Promise object the will either be set to a state of rejected or resolved. Promises have a `then` method, which you can use to get the eventual return value (resolve) or thrown exception (rejection).

```js
//Original call site of the promise
get_some_api_data()
  // Then gets executed when promise is resolved
  .then(function(result) {
    console.log("API call successful and responded with", result);
  })
  // Fail gets executed when promise is rejected
  .fail(function(error) {
    console.log("API call failed with error", error);
  });
```


```js
function get_some_api_data() {
  // Create a deferred Promise
  var deferred = Q.defer();

  // Start the XHR call
  $.ajax(...)
    .done(function(api_data) {
      deferred.resolve(api_data);
    })
    .fail(function(xhr, status, error) {
      deferred.reject(error);
    });

  // Return the promise
  return deferred;
}
```

This code is easier to follow because we don't have a callback function reference that we're passing around anymore. We handle the success, or failure, of the asynchronous logic with `then()` or `fail()` at the original call site.

Where Promises come in particularly handy is when dependent XHR calls start creating a Pyramid of Doom

```js
$.ajax(...).done(function(first_data) {
  var response_1 = first_data;
  
  $.ajax({ data: first_data }).done(function(second_data) {
    var response_2 = second_data;
    
    $.ajax({ data: second_data }).done(function(third_data) {
      var response_3 = third_data;
    }
  }
}
```

By separating each of the XHR calls into their own functions that return a promise, that code becomes much more readable.

```js
// Place all of your functions that return Promises into an array
var firstXHR = function() {
  var deferred = Q.defer();
  $.ajax(...);
  return deferred;
};

var secondXHR = function(result_of_firstXHR) {
  var deferred = Q.defer();
  $.ajax(...);
  return deferred;
};

var thirdXHR = function(result_of_secondXHR) {
  var deferred = Q.defer();
  $.ajax(...);
  return deferred;
};

// Use the allSettled method to look
firstXHR()
  .then(function(data1) {
    return secondXHR();
  })
  .then(function(data2) {
    return thirdXHR(data1);
  }
  .then(function(data3) {
    return secondXHR(data2);
  })
  .done();

```

## Scope & Closures

## ES2015 Syntax

## Transpilers
