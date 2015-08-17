# JavaScript 201

## lodash

lodash provides all the functional programming methods that you with JavaScript had natively. Show students some examples of [lodash](http://www.lodash.com/docs) method (e.g. chain, uniq, pluck, sortBy, filter, etc...). They should very quickly see where they could use these methods to replace many `for` loops they have written in the past.

## Promises

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
// Define a function for each XHR call
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

var secondXHR = function(result_of_firstXHR) {
  var deferred = Q.defer();

  $.ajax({
    url: "https://nss-demo-instructor.firebaseio.com/more-songs.json"
  }).done(function(data) {
    deferred.resolve(data);
  }).fail(function(xhr, status, error) {
    deferred.reject(error);
  });

  return deferred.promise;
};

var thirdXHR = function(result_of_secondXHR) {
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

// Define the order of execution of the XHR calls
firstXHR()
  .then(function(data1) {
    return secondXHR(data1);
  })
  .then(function(data2) {
    return thirdXHR(data2);
  })
  .done();
```

Promises also maintain their state. If you store a Promise object in a variable, you can then check the state of that Promise at any other time in your code.

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

## ES2015 Syntax

[ECMAScript 6](http://es6-features.org/) reference site.

### Arrow functions

```js
var numbers = [1, 2, 3, 4, 5];

var new_numbers = numbers.map(n => n * 2);
```

### Class syntactic sugar

```
class Shape {
    constructor (id, x, y) {
        this.id = id
        this.move(x, y)
    }
    move (x, y) {
        this.x = x
        this.y = y
    }
}
```

### `let` and `const`

```js
const PI = 3.141593;

for (let i = 0; i < a.length; i++) {
    let x = a[i];
}
```

### Default parameter values

```js
function f (x, y = 7, z = 42) {
    return x + y + z
}
f(1) === 50
```

### String interpolation

```js
var x = 77;
var y = 88;
var dynamic_string = `There are ${x} ping pong balls and ${y} paddles`;
```

### Object property shorthand 

```js
var x = 66;
var y = 77;
var obj = { x, y }; // obj = { x:66, y:77 }
```
 

## Transpilers

Install Babel and show its usage for transpiling ES6 to ES5.