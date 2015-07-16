# JavaScript 102

## Advanced array usage

### join

This combines all elements in an array into a single string, delimited by the character that you specify.

```js
var fruit = ['cherries', 'apples', 'bananas'];
var fruitString = fruit.join(","); // "cherries,apples,bananas"
fruitString = fruit.join(" "); // "cherries apples bananas"
fruitString = fruit.join("><"); // "cherries><apples><bananas"
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
var fruit = ['cherries', 'apples', 'bananas'];
fruit.reverse(); // ['bananas', 'apples', 'cherries']
```

### sort

Pretty simple, it sorts the items in an array

```js
var fruit = ['cherries', 'apples', 'bananas'];
fruit.sort(); // ['apples', 'bananas', 'cherries']
```

### slice

The slice() method returns a shallow copy of a portion of an array into a new array object.

```js
var fruits = ['Banana', 'Orange', 'Lemon', 'Apple', 'Mango'];
var citrus = fruits.slice(1, 3); // ['Orange', 'Lemon']
```

### indexOf

This method find the index of the specified value in an array. If it's not found, it returns -1.

```js
var fruits = ['Banana', 'Orange', 'Lemon', 'Apple', 'Mango'];
fruits.indexOf('Lemon'); // 2
```

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

## Prototypal inheritance

Open the [playground Codepen](http://codepen.io/chortlehoort/pen/bdKJEE?editors=001) and show/explain prototypal inheritance.

[Student exercise](http://codepen.io/chortlehoort/pen/JdZVGa?editors=001)

## JSON
