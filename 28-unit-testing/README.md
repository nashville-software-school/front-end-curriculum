# Unit testing your code

We're going to be using the [Jest](https://facebook.github.io/jest/) library which was open-sourced by Facebook.

## Write the test before the solution

One of the core ideas behind writing testable code is to plan the code you want to write, and then write a test that defines what the behavior of the code should be, and **then** write the code that passes the test.

Let's think about a very basic Calculator application you want to write with JavaScript. It will have the ability to add, subtract, multiply, and divide two numbers.

Using the Jest syntax, let's write the tests first.

```
describe('sum', function() {
  it('adds 5 + 2 to equal 7', function() {
    expect(math.sum(2, 5)).toBe(7);
  });
});

describe('difference', function() {
  it('subtracts 5 - 2 to equal 3', function() {
    expect(math.difference(5, 2)).toBe(3);
  });
});

describe('product', function() {
  it('mutiplies 2 * 5 to equal 10', function() {
    expect(math.product(2, 5)).toBe(10);
  });
});

describe('quotient', function() {
  it('divides 5 / 2 to equal 2.5', function() {
    expect(math.quotient(5, 2)).toBe(2.5);
  });
});

```
