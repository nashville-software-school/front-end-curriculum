# More about first order functions

Since functions are objects, you can pass them as arguments to other function, just like you would any other native JavaScript type. This exercise is a simplistic example of a software development pattern called [Decorator](https://developer.mozilla.org/en-US/docs/Decorators).

```js
/*
  Create a function that makes something hungry by
  setting the `bellyIs` property value of the object
  passed in to "hungry".

  It would be called like this:
    var cat = {};
    console.log(cat);  // { }
    makeHungry(cat);
    console.log(cat);  // { bellyIs: "hungry" }
 */
function makeHungry(thing) {
  thing.bellyIs = "hungry";
}


/*
  Create a function that makes something full
 */
function makeFull(thing) {
  thing.bellyIs = "full";
}

/*
  Create a function that paints something red
 */
function paintRed(thing) {
  thing.color = "red";
}

/*
  Create a function that makes a thing old
 */
function makeOld(thing) {
  thing.age = "old";
}

/*
  Create a function that makes a thing old
 */
function makeYoung(thing) {
  thing.age = "young";
}

/*
  Create a function that has two arguments
    1. An object
    2. A function that applies a modifier

  This is the function that allows you to decorate any
  object with properties.
 */
function modifyThing(thing, modifier) {
  modifier(thing);
}

/*
  Make an object that you will then decorate by calling
  the corresponding functions
 */
var elephant = {
  type: "African",
  name: "Horton"
};

/*
  Call the modifyThing function, and pass in
  an object, and the function you want it to 
  execute.
 */
modifyThing(elephant, paintRed);

/*
  You can continue to decorate your objects
  in any way that you want
 */
modifyThing(elephant, makeFull);
modifyThing(elephant, makeYoung);

/*
  Now you can continue to modify your object
  without having to write complex logic in a single
  function. You make a lot of smaller functions
  that do one thing, and one thing only.

  This is another pillar of software development
  called the Single Responsibility Principle. The 
  concept comes from OOP software, but it has 
  extended into more general terms.

  https://en.wikipedia.org/wiki/Single_responsibility_principle
 */

/*
  Now your object has some new properties
 */
console.log(elephant); // { bellyIs: "full", age: "young", color: "red" }
```
> **Instructor suggestion**:
>
> Get students started on the [calculator exercise](exercises/CALCULATOR.md)

# this

What is `this` in JavaScript? It's a common misconception that when you see the keyword `this` inside a function that it refers to the function itself. However, it's the *context* in which a function is executed that drives what the value of `this` is.

Let's look at a simple example to show why it is not a reference to the function itself.

```js
// Define a function that increments this.counter
function sample( loopCounter ) {
  console.log( "loopCounter", loopCounter );
  this.counter++;
}

// Set the initial value of the counter variable in the function
sample.counter = 0;

// Define a loop that called sample() an arbitrary number of time
for (var i = 0; i < 11; i++) {
  sample( i ); // Outputs 0, 1, 2, 3, etc..
}

// Output the final value of the counter variable from the function
console.log( sample.counter );  // Outputs 0
```

In the previous example, we need to look at the execution context that existed when we executed the `sample()` function. Remember when I explained that **everything** lives on the `window` (i.e. global) object when JavaScript was executed in a browser? Well, looking back inside the `for` loop above, you'll notice that we have a simple execution of the `sample()` function. Therefore, the execution *context* is the `window` object.

That *execution context* becomes the value of `this` for the entirety of the execution of the function. So, looking back on the previous example, if the *execution context* is `window`, the function evaluates as this.

```js
// Define a function that increments this.counter
function sample( loopCounter ) {
  console.log( "loopCounter", loopCounter );
  window.counter++;
}
```

So when you output `sample.counter` to the console, it was still at 0, its initial value, because we never modified it. Instead, you were incrementing a global variable.

# Prototypal inheritance

```js
/*
  A basic animal function
*/
function Animal () {
  this.family = "animal";
  console.log(this);
}

/*
  Explain why just calling Animal() here causes the 
  console.log(this) above to output the Window object.
  First introduction to call sites in JavaScript.
 */
Animal();

/*
  So now we create a `new` Animal object and then 
  afterwards, JavaScript lets you add another property.
  Clearly explain how creating a new object based on 
  a function changes the value of `this`.
 */
var salamander = new Animal();
salamander.property = "slimy";
console.log('salamander',salamander);

/*
  Create another animal object and give it the same 
  property, but with a different value.

  Notice that the properties show when we log the new 
  objects we created, but not on the Animal object itself.
  It shows that we are creating new instances of the 
  Animal function, not sharing it between salamander 
  and kangaroo. 
  */
var kangaroo = new Animal();
kangaroo.property = "jumpy";
console.log('kangaroo', kangaroo);

/*
  Now prototypes. We declare a new function and set its 
  prototype to Animal. This will combine species (which 
  is set on this object) and the family property (which 
  is set on the prototype) and puts them both on Doge
 */
function Doge () {
  this.species = "Doge";
}
Doge.prototype = new Animal();

/*
  View the output of the console log below and make sure 
  you expand the __proto__ object on it to see that family 
  is inherited from the prototype.
 */
var doge = new Doge();
console.log('doge',doge);


/*
  More inheritance. We set the prototype of the Angus 
  function to Doge.

  Angus inherits from Doge which inherits from Animal
 */
function Angus () {
  this.name = "Angus";
}
Angus.prototype = new Doge();

var angus = new Angus();
console.log('angus',angus);
```

> **Instructor suggestion**:
>
> Get students started on the [Cars exercise](exercises/CARS.md)
