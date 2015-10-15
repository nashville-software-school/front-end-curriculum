# JavaScript 102

## Advanced array usage

### join

This combines all elements in an array into a single string, delimited by the character that you specify.

```js
var fruit = ["cherries", "apples", "bananas"];
var fruitString = fruit.join(","); // "cherries,apples,bananas"
fruitString = fruit.join(" "); // "cherries apples bananas"
fruitString = fruit.join("><");
```

### String.split()

This is the reverse of the `join()` method. It take a string and converts it into an array. You pass in the character that is the delimiter of each item in the string.

```js
var fruits = "watermelon|lemon|orange";
var fruitArray = fruits.split("|");
```

### reverse

Pretty simple, it reverse the items in an array

```js
var fruit = ["cherries", "apples", "bananas"];
fruit.reverse(); // ["bananas", "apples", "cherries"]
```

### sort

Pretty simple, it sorts the items in an array

```js
var fruit = ["cherries", "apples", "bananas"];
fruit.sort(); // ["apples", "bananas", "cherries"]
```

The tricky thing about sort is that it doesn't work very well with numbers. To sort numbers, you have to pass a custom function to the sort method. The default sort logic simply looks at the first character of each item and compares the ASCII value of that character.

```js
var numbers = [8, 1, 42, 13, 22, 7, 4, 53];
numbers.sort(); // [1, 13, 22, 4, 42, 53, 7, 8]
numbers.sort(function(first, second) { return first - second; }) // [1, 4, 7, 8, 13, 22, 42, 53]
```

### slice

The slice() method returns a shallow copy of a portion of an array into a new array object.

```js
var fruits = ["Banana", "Orange", "Lemon", "Apple", "Mango"];
var citrus = fruits.slice(1, 3); // ["Orange", "Lemon"]
```

### indexOf

This method find the index of the specified value in an array. If it's not found, it returns -1.

```js
var fruits = ["Banana", "Orange", "Lemon", "Apple", "Mango"];
fruits.indexOf('Lemon'); // 2
```

> **Instructor suggestion**:
>
> Have students do the [array methods exercise](exercises/BASICARRAYMETHODS.md).


## Objects

The most basic object is a collection of key:value pairs surrounded by curly braces.

```js
var myCar = {
  make: "Nissan",
  model: "Xterra",
  year: 2006,
  color: blue
}
```

You can add new key:value pairs after the initial definition.

```js
myCar.doors = 4;
myCar.sunroof = false;
```

You can then access the value of any of those keys.

```js
console.log("My car has " + myCar.doors + " doors.");
```

## Functions

##### Simple function

Go over the basics of functions and live code some examples.

```js
function sayHello() {
  document.write("Hello, world");
}

// Only when you write the name of the function with parenthesis, does it get executed.
sayHello();
```

##### Function with arguments

```
function saySomething(message) {
  document.write(message);
}

saySomething("Hello");
saySomething("World");
```


> **Instructor suggestion**:
>
> After live coding and student questions, have students do the [coins exercise](COINS.md) which combines working with an object and a function.


### Functions with/without return values

```js
function reverseIt(originalString) {

  // Convert string to array, reverse the elements, and join back together
  var reversedString = originalString.split("").reverse().join("");
  
  // Return the new string
  return reversedString;
}

var result = reverseIt("flambajamba");
console.log(result);
```

### Functions are first-order objects

Can be passed as arguments to other functions.

```js
function performOperationOnString(originalString, functionToExecute) {
  var finalValue = functionToExecute(originalString);

  return finalValue;
}

function alphabetical(originalString) {
  var alphabeticalOrder = originalString.split("").sort().join("");
  
  return alphabeticalOrder;
}

var result = performOperationOnString("The lazy brown dog", alphabetical);
console.log(result);
```

> **Instructor suggestion**:
>
> After live coding and student questions, have students do the [coins exercise](COINS.md).



### Handling DOM events

Provide an `onlick=someFunction()` attribute to an anchor element and show how it can be handled with JavaScript.

## Prototypal inheritance

Open the [playground Codepen](http://codepen.io/chortlehoort/pen/bdKJEE?editors=001) and show/explain prototypal inheritance.

[Student exercise](http://codepen.io/chortlehoort/pen/JdZVGa?editors=001)

## JSON
