# JavaScript 201

## lodash

lodash provides all the functional programming methods that you with JavaScript had natively. Show students some examples of [lodash](http://www.lodash.com/docs) method (e.g. chain, uniq, pluck, sortBy, filter, etc...). They should very quickly see where they could use these methods to replace many `for` loops they have written in the past.

## Promises and deferred actions

We will be using the [Q](https://github.com/kriskowal/q) library to work with Promises.

```bash
bower install q --save
```

Add the library to the RequireJS configuration.

```js
requirejs.config({
  baseUrl: './javascripts',
  paths: {
    'q': '../bower_components/q/q'
  }
});
```

We'll be using deferred objects to control the order of execution in our asynchronous code. Up to this point, we've been using callbacks to handle when the status of an asynchronous operation is updated.

```js
function get_some_api_data(successCallback, failedCallback) {
$.ajax(...)
  .done(function(api_data) {
    successCallback(api_data); // Execute the success function reference passed to us
  })
  .fail(function(xhr, status, error) {
    failedCallback(error); // Execute the failure function reference passed to us
  });
}
```

With deferred objects, we can let any other code that is listening to the operation know when it either succeeded or failed.

With Q, we create a deferred object to handle an asynchronous action like an XHR request (AJAX). First, we define a function that will execute the XHR, and make a variable to hold a deferred object.

```js
function getSongs() {
  var deferred = Q.defer();
}
```

This function will then return a Promise.

```js
function getSongs() {
  var deferred = Q.defer();

  return deferred.promise;
}
```

So now anywhere that you call `getSongs()`, you can use callback functions to handle what happened with your XHR. How do we do that?

 - Resolve is used to broadcast that the action succeeded.
 - Reject is used to broadcast that the action failed.

```js
function getSongs() {
  var deferred = Q.defer();

  $.ajax({ url: "songs.json" })
    // XHR was successful
    .done(function(json_data) {
      // Now we can resolve the promise and send the data
      deferred.resolve(json_data);
    })

    // XHR failed for some reason
    .fail(function(xhr, status, error) {
      // Since the call failed, we have to reject the promise
      deferred.reject(error);
    });

  return deferred.promise;
}
```

When a promise is resolved, you can specify which function will get executed in the `then()` method.

```js
//Original call site of the promise
getSongs()
  // Then gets executed when promise is resolved
  .then(function(json_data) {
    console.log("API call successful and responded with", json_data);
  });
```

When a promise is rejected, you can specify which function will get executed in the `fail()` method.

```js
//Original call site of the promise
getSongs()
  // Then gets executed when promise is resolved
  .then(function(json_data) {
    console.log("API call successful and responded with", json_data);
  })
  // Fail gets executed when promise is rejected
  .fail(function(error) {
    console.log("API call failed with error", error);
  });
```

This code is easier to follow because we don't have a callback function reference that we're passing around anymore. We handle the success, or failure, of the asynchronous logic with `then()` or `fail()` at the original call site.

Where Promises come in particularly handy is when dependent XHR calls start creating a **Pyramid of Doom**.

```js
$.ajax(...).done(function(first_data) {
  
  // This XHR depends on the data that was returned from the first XHR
  $.ajax({ data: first_data }).done(function(second_data) {
  
  // This XHR depends on the data that was returned from the second XHR  
    $.ajax({ data: second_data }).done(function(third_data) {
      var response_3 = third_data;
    }
  }
}
```

By separating each of the XHR calls into their own functions that return a promise, that code becomes much more readable.

```js
// This function does one thing, and returns a promise
var firstXHR = function() {
  var deferred = Q.defer();

  $.ajax({
    url: "https://nss-demo-instructor.firebaseio.com/songs.json"
  }).done(function(data) {
    deferred.resolve(data);
  }).fail(function(xhr, status, error) {
    deferred.reject(error);
  });

  return deferred.promise;
};

// This function does one thing, and returns a promise
var secondXHR = function(result_of_firstXHR) {
  var deferred = Q.defer();

  $.ajax({
    url: "https://nss-demo-instructor.firebaseio.com/more-songs-info.json",
    data: result_of_firstXHR
  }).done(function(data) {
    deferred.resolve(data);
  }).fail(function(xhr, status, error) {
    deferred.reject(error);
  });

  return deferred.promise;
};

// This function does one thing, and returns a promise
var thirdXHR = function(result_of_secondXHR) {
  var deferred = Q.defer();

  $.ajax({
    url: "https://nss-demo-instructor.firebaseio.com/song-details.json",
    data: result_of_secondXHR
  }).done(function(data) {
    deferred.resolve(data);
  }).fail(function(xhr, status, error) {
    deferred.reject(error);
  });

  return deferred.promise;
};

/*
  Now we use those Promises to describe the order of execution, 
  and how data flows between each one.
 */
firstXHR()
  .then(function(data1) {
    return secondXHR(data1);
  })
  .then(function(data2) {
    return thirdXHR(data2);
  })
  .done();
```

Promises also maintain their state. If you store a Promise object in a variable, you can then check the state of that Promise at any other time in your code. Think of a banking application where you use an XHR to get the current balance of an account, and all transactions in the last 30 days.

By using a promise to broadcast, and maintain, the state of that operation, you can then check it later 

```js
// This stores the Promise object
 var promiseStorage = promise();

// You can then handle success/failure of the promise
 promiseStorage.then(function(results) {
   console.log("results",results);
 }).fail(function(error) {
   console.log("error", error);
 });

 $("#clearFilter").click(function() {
   // This does not execute the XHR function again, but simply
   // checks the state of the Promise and acts accordingly
   promiseStorage.then(function(results) {
     console.log("results",results);
   }).fail(function(error) {
      console.log("error", error);
   });
 });
```


### Promises Exercise

You're going to be working on a group project to refactor an small app that uses jQuery and XHRs with callbacks to use promises instead.

> **Instructor Suggestion:** 
> Use Github Classroom to create a new team project with something like [this repository](https://github.com/chortlehoort/exercise-promises) and the boilerplate. Break the students up into groups, and then send them the link to the group assignment. Each team will create their own team for the exercise, and each teammate will join the team and instantly be added as collaborators to it.


## Scope & Closures & this (oh my)

Go over call-site and call-stacks. Four examples are given below to show different contexts and/or behaviors for what `this` holds.

```js
/*
  Example one: call site and call stack
 */
var fubar = "42";

function baz() {
    console.log( "baz" );
    bar();
}

function bar() {
    console.log( "bar" );
    foo();
}

function foo() {
    var fubar = "666";

    console.log( "foo" );
    console.log( this );
    console.log( this.fubar );
}

baz();


/*
  Example two: context objects
 */
function foo() {
    console.log( this.a );
}

var obj = {
    a: 2,
    foo: foo
};

obj.foo();


/*
  Example three: context objects
 */
function foo() {
    console.log( this.a );
}

var obj2 = {
    a: 42,
    foo: foo
};

var obj1 = {
    a: 2,
    obj2: obj2
};

obj1.obj2.foo();


/*
  Example four: losing original binding
 */
function foo() {
    console.log( this.a );
}

var obj = {
    a: 2,
    foo: foo
};

var bar = obj.foo;
var a = "global warming";

obj.foo();
// bar();


/*
  Example five: losing original binding with callbacks
 */
function foo() {
    console.log( this.a );
}

function doFoo(fn) {
    fn();
}

var obj = {
    a: 2,
    foo: foo
};

var a = "oops, global";

doFoo( obj.foo );
```
