# JavaScript 103


> **Instructor Suggestion:** 
>
> Begin coordinating with previous class about a joint project that allows the back-end class to work with the new front-end developers.


# Core principles

## Function expression vs. function declaration

```
var myFunc = function() {
  // This is a function expression
};

function yourFunc() {
  // This is a function declaration
}

var theirFunc = function ourFunc() {
  // This is a function expression
};

// ourFunc is not defined, nor does it make the previous expression into a declaration

```

## Hoisting
Function declarations and variable declarations are always moved (“hoisted”) invisibly to the top of their containing scope by the JavaScript interpreter. Function parameters and language-defined names are, obviously, already there. This means that code like this:

```js
function foo() {
  bar();
  var x = 1;
}
```

is actually interpreted like this:

```js
function foo() {
  var x;
  bar();
  x = 1;
}
```

Variable declarations get hoisted, but expressions do not.

```js
function test() {
  foo(); // TypeError "foo is not a function"
  bar(); // "this will run!"
  var foo = function () { // function expression assigned to local variable 'foo'
    alert("this won't run!");
  }
  function bar() { // function declaration, given the name 'bar'
    alert("this will run!");
  }
}
test();
```

Because of hoisting in JavaScript, it is common convention to make sure that you have **only one** var declaration for each variable, and that you do it at the top of the function to avoid an confusion or bugs caused by hoisting.

```js
function goodFunc() {
  var good = true;
  var evil = false;
  var wings = 2;

  // Awesome code using those variables...
}
```

You can also have one `var` declaration, and then have each variables separated by commas. The `var` applies to all of them.

```js
function goodFunc() {
  var good = true, evil = false, wings = 2;

  // Awesome code using those variables...
}
```

## Callbacks

> A reference to executable code, or a piece of executable code, that is passed as an argument to other code.

```js
function callMe(num, callback) {
  var newNum = num * 11;
  callback.call(this, newNum);
}

var final = callMe(5, function(num) {
  console.log("final", num * 8);
});
```

## Advanced array manipulation (forEach, map, reduce)

The `forEach` method on an array executed a callback function for each element in the array.

```js
function outputFruit(element, index, array) {
  console.log('array[' + index + '] = ' + element);
}

var fruits = ["apple", "banana", "cherry"];
fruits.forEach(outputFruit);
```

The `map()` method creates a new array with the results of calling a provided function on every element in this array.

```js
function reverseIt(element, index, array) {
  return element.split("").reverse().join("");
}

var fruits = ["apple", "banana", "cherry"];
var backwardFruits = fruits.map(reverseIt);
console.log(backwardFruits); // ["elppa", "ananab", "yrrehc"]
```

The `filter()` method creates a new array with all elements that pass the test implemented by the provided function.

```js
function filterIt(element, index, array) {
  if (element.length === 5) {
    return element;
  }
}

var fruits = ["apple", "banana", "cherry"];
var filteredFruits = fruits.filter(filterIt);
console.log(filteredFruits); // ["apple"]
```

The `reduce()` method applies a function against an accumulator and each value of the array (from left-to-right) to reduce it to a single value.

```js
var sum = [0, 1, 2, 3, 4].reduce(function(previousValue, currentValue, index, array) {
  console.log("curent index: " + index);
  return previousValue + currentValue;
});
console.log(sum);
```

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
throwAway();
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

# Team Exercise

Represent a small bilingual lexicon as a Javascript object (see example below) and use it to translate a holiday card message from English into another language. Each member of the team will build a JavaScript module that will convert text entered into an input field to the language that they choose.

`{"merry":"god", "christmas":"jul", "and":"och", "happy":"gott", "new":"nytt", "year":"år"}`

This is Swedish, so please choose other languages. You can add as many words/translations as you wish so that the user can write more complex holiday cards.

1. One team member creates a Github project and adds the others as collaborators.
1. Each team member picks a language.
1. Your project should have one HTML file that has a textarea, a select element with an option for each language, a button with a label of "Translate", and an empty DOM element into which the translated text will be inserted.
1. The team must discuss and choose a single variable name that will hold all of the logic that the team creates (i.e. see the Sedan example above).
1. Each team member will create one JavaScript file that contains one IIFE. Each teammate's IIFE will augment the other teammates' IIFEs.
1. The lexicon should be a private variable that cannot be accessed by the other team member's module except through an accessor (getter) method.
1. Each IIFE should expose, in its public interface, a method named `translateTo{Language}` (e.g. `translateToSpanish` or `translateToFinnish`) that accepts a single argument. That argument's value should be the text entered in by the user.
1. The team should create an extra JavaScript file that handles interacting with the form elements and determining which method should be called.

> **Optional Bonus 1**
>
> Find a way to write your IIFEs so that it doesn't matter whose module gets created first.

---

> **Optional Bonus 2**
>
> In addition to inserting the translated text into the HTML document, have the browser read the translated text to the user.
> 

# Team Exercise 2
## Sandwich Maker

Create a sandwich order form that allows the user to select all the ingredients for a custom deli sandwich. Create a `Sandwich` module, then create the following as individual modules, using IFFE syntax, to augment `Sandwich`:  

+ bread
+ meat
+ cheese
+ condiments
+ veggies

1. As before, one team member creates a Github project and adds the other(s) as collaborators.
1. Your project should have one HTML file that has:
+ a section of options for each sandwich part 
+ the ability to select multiple, or zero, choices for each section (such as turkey _and_ bacon, or "no meat") 
+ a button with a label of "Make me a sandwich"  
+ an empty DOM element into which the final sandwich order and its cost will be inserted  

1. The ingredient choices should be stored as JS objects that contain the ingredients as keys and their cost as the value. `{"turkey": "2.00", "bacon": "1.50"}` 
1. Make sure the ingredient objects cannot be accessed by the other modules except through an accessor (getter) method.
1. Each IIFE should expose, in its public interface, a method named `add{ingredient}` (e.g. `addMeat` or `addVeggies`) that accepts a single argument. That argument's value should be the ingredient(s) selected by the user.
1. The team should create an additional JavaScript file that handles interacting with the form elements and determining which method should be called.

Don't worry about exposing the prices to the user until you display the final cost. This is just an exercise, not a business model.
