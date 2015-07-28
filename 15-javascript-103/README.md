# JavaScript 103

# Core principles

1. Hoisting
1. Function expression vs. function declaration
1. Advanced array manipulation (forEach, map, reduce)
1. Callbacks (refer to jQuery AJAX)

# Modular JavaScript Development

## Literal modules

A literal JavaScript module is just a POJO. It has no internal, private state that cannot be changed by someone else that has access to your code in the browser.

```js
// Literal object module

var basicCarModule = {

  color: "blue",
  size: "sedan",

  options: {
    sunRoof: true,
    racingStripes: false,
    spoiler: false,
    leatherSeats: true,
    heatedSeats: true,
    underLighting: false
  },

  setSpoilerOption: function (spoiler) {
    this.options.spoiler = spoiler;
  },

  setColor: function (color) {
    this.color = color;
  },

  setOptions: function (options) {
    this.options = options;
  }

}

console.log('basicCarModule', basicCarModule);

// You can call methods on the object
basicCarModule.setColor("green");

// You can also modify other keys, even without a setter function (bad)
basicCarModule.size = "minivan";

console.log('basicCarModule', basicCarModule);
```

## Immediately invoked function expression (IIFE)

It executes immediately after it’s created. This pattern is often used when trying to avoid polluting the global namespace, because all the variables used in the function are not visible outside its scope.

### Basic (anonymous closure)

```js
var global_base = 500;

// This function is not immediately executed
function throwAway() {
  global_base += 500;
}

// You have to explicitly execute the function
// throwAway();
console.log("global_base",global_base);

// This function expression is immediately executed
(function () {
  var _internal_base = 100;
  var _internal_sum = _internal_base + global_base;
  console.log("_internal_sum",_internal_sum)
}());

/*
  Just like any other function, any variables
  declared inside its scope are not available in
  the global scope.
 */
console.log("_internal_base",_internal_base)
```

### Module private members

> File: sedan.js

```js
// IIFE
// Immediately invoked function expression
var Sedan = (function() {
  var color = "blue";
  var type = "sedan";

  return {
    manufacture_date: new Date(),
    getColor: function() {
      return color;
    },
    setColor: function(newColor) {
      color = newColor;
    },
    getType: function() {
      return type;
    }
  };
})();

/* 
  Now, code that uses this module can call methods, and access
  properties that are in the public interface, but cannot change
  any private variables.
*/
Sedan.setColor("green");  // this works

/*
 This adds the property to the public interface, but the 
 existing, internal type property remains unchanged.
*/
Sedan.type = "minivan"; 
console.log(Sedan.getType());
```

> **Instructor Suggestion:** 
>
> Break now for a class exercise. Have students create a new directory named `modules` where they will create an HTML and a JS file. The JS file should create an IIFE module named `SolarSystem`. Have the student create properties and methods for the following:
> 
>    1. Getter for an array of planets that cannot be modified.
>    1. Getter/setter for number of planets that humans have landed people or robots on.
>    1. Public property for holding a last modified date.
>    1. Getter/setter for spacecraft currently exploring solar system. These should be stored in a private array.
>    1. Any other fun/related data that the student wants to add.

### Augmenting modules

One limitation of the module pattern so far is that the entire module must be in one file. Anyone who has worked in a large code-base understands the value of splitting among multiple files. Luckily, we have a nice solution to augment modules. 

First, we import the module, then we add properties, then we export it. Here’s an example, augmenting our **Sedan** from above:

> File: sedan.html

```html
<!doctype html>

<html lang="en">
<head>
  <meta charset="utf-8">
  <title>NSS Starter Kit - Modules</title>
</head>

<body>

  <script src="sedan.js"></script>
  <script src="sedan_augment.js"></script>

</body>
</html>
```

> File: sedan_augment.js

```js
var Sedan = (function(sedan) {
  var max_occupancy = 6;
  var current_occupancy = 0;

  sedan.setOccupancy = function(occupancy) {
    if (occupancy <= max_occupancy) {
      current_occupancy = occupancy;
    } else {
      throw "Cannot exceed maximum occupancy of " + max_occupancy;
    }
  };
  
  sedan.getOccupancy = function() {
    return current_occupancy;
  };
  
  return sedan;

})(Sedan);

console.log(Sedan);
console.log(Sedan.setOccupancy(9));
```


> **Instructor Suggestion:** 
>
> Break now for a class exercise. Have students create a new JS file for the solar system application that augments the `SolarSystem` module they created in the initial JS file.
> 
>    1. Getter for an array of closest 5 stars to the Sun.
>    1. Getter/setter for the estimated age of the solar system in earth years.
>    1. Getter/setter for array of known dwarf planets.


