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
> **Instructor suggestion**: Get students started on the [calculator exercise](exercises/CALCULATOR.md)

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

You will be learning more about `this` in future modules, but just keep in mind that its value is not the function containing it, but the context in which the function was executed.

# Prototypal inheritance

Prototypal inheritance is different from class based inheritance found in the traditional C-family of languages where a new object contains the properties of another class that it inherited from. In JavaScript, any object can specify what its prototype is, creating what's called a prototype chain.

```js
var Parent = function() {
  this.name = "Parent";
  this.foo = "bar";
  this.baz = true;
};

var Child = function() {
  this.name = "Child";
  this.bam = false;
};

/*
  Create a new instance of the Parent function and set
  it as the prototype of child. This set up a prototype
  chain as follows.

  Child ---> Parent ---> Object
 */
Child.prototype = new Parent();
```

So what is this `new` keyword? Well by creating a `new` function, there's a few things that happen.

1. JavaScript creates a new object.
1. Then a new execution context is created, and is set to the object being created. In our case, `this` will be the new `Parent` object we are creating.
1. Set the prototype on the object. By default it is the base `Object` in JavaScript, unless otherwise specified.
1. The constructor function is executed. So when it parses `new Parent()`, the code inside the function declaration for `Parent` executes.
1. It returns the new object, so we need to store that return value. In our case, the new `Parent` object is stored in `Child.prototype`, which establishes the prototype chain.

So now that we've defined a child in the constructor function `Child`, and also established that `Parent` is the prototype of `Child`, we can now create a new `Child` object.

```js
var child = new Child();
console.log("child", child);

/*
  The new child variable is now an object, that contains not
  only the properties established in its own constructor function
  but also the properties from the Parent.
 */ 

console.log(child.bam);  // false - defined in Child
console.log(child.foo);  // "bar" - defined in Parent
```

If you try to access a property on an object, JavaScript first looks on the object itself, then on its prototype, then on the prototype's prototype, etc., until it finds the property. If it exists nowhere on the prototype chain, you'll get `undefined`.

```js
var height = child.height;  // undefined
```

Let's look at a more complex example.

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

  Animal ---> Object
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

  Doge ---> Animal ---> Object
 */
var doge = new Doge();
console.log('doge',doge);


/*
  More inheritance. We set the prototype of the Angus 
  function to Doge.

  Angus ---> Doge ---> Animal ---> Object
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
 
## is-a vs. has-a

Object inheritance is one way to build traits and behaviors into objects. The other, complementary way, is called [object composition](https://en.wikipedia.org/wiki/Object_composition). When you compose one object into another, they are allowed to evolve independently which helps create a more robust and flexible system. Using only inheritance to build more specialized objects results in fragile code with a very high refactoring cost.

Inheritance is used to describe an object at design/compile time, and composition is used to modify an object at run time.

Let's look at an example for a pizza order.

```js
var Order = function() {

};

var Pizza = function() {

};

var DeepDish = function() {

};

var ThinCrust = function() {

};

var Topping = function() {

};

var Pepperoni = function() {

};

var Mushroom = function() {

};

var Beverage = function() {

};

var Soda = function() {

};

var FruitPunch = function() {

};
```

With these basic functions set up, let's look at the possible `is-a` and `has-a` relationships. Start by asking simple questions about the relationship between two functions.

Is Soda a Pizza? No. Therefore, you're looking at a `has-a` relationship.

Is Mushroom a Topping? Yes. Therefore, you're looking at an `is-a` relationship.

Whenever you can answer the `is-a` question with yes, you can establish the prototype chain.

```js
var Topping = function() {

};

var Pepperoni = function() {

};
Pepperoni.prototype = new Topping();

var Mushroom = function() {

};
Mushroom.prototype = new Topping();
```

So in this case, we've established Topping as a root function in a prototype chain. But is it the only prototype chain? No. There's two more.

The Pizza prototype chain.

```js
var Pizza = function() {

};

var DeepDish = function() {

};
DeepDish.prototype = new Pizza();

var ThinCrust = function() {

};
ThinCrust.prototype = new Pizza();
```

The Beverage prototype chain.

```js
var Beverage = function() {

};

var Soda = function() {

};
Soda.prototype = new Beverage();

var FruitPunch = function() {

};
FruitPunch.prototype = new Beverage();
```

Now that we've set up the different prototype chains and established inheritance, we can start to use composition to build `has-a` relationships.

What can a Pizza have that isn't inherent to the Pizza itself? A Topping. So let's set up a property on a Pizza to hold the Toppings.

```js
var Pizza = function() {
  this.toppings = [];
};
```

Now, no matter what specific kind of Pizza you create - DeepDish or ThinCrust - there will be an array you can modify to add Toppings.

```js
// Create a Pizza
var gameDayPizza = new DeepDish();

// Create a Topping
var pepperoni = new Pepperoni()l

// Add the Topping to the Pizza
gameDayPizza.toppings.push(pepperoni); // Now we have a pepperoni pizza
```

How about an Order? Is a Topping an Order? No.

Is a Pizza an Order? No.

Is a Beverage an Order? No.

This means that an order is composed of all the other types of objects. So we set up some default properties with `null` values that can be modified later by our application code.

```js
var Order = function() {
  this.pizza = null;
  this.beverage = null;
};

// Create an Order and add our Pizza to it
var gameDayOrder = new Order();
gameDayOrder.pizza = gameDayPizza;

// Create a Beverage and add it to the order
var pepsi = new Soda();
gameDayOrder.beverage = pepsi;

console.log("My game day order: ", gameDayOrder);
```









