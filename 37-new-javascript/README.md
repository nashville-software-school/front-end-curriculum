# EcmaScript 6

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