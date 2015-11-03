# Unit testing your code

We're going to be using the [Jest](https://facebook.github.io/jest/) library which was open-sourced by Facebook.

```bash
mkdir ~/workspace/jest && cd $_
mkdir __tests__
npm init # Accept the defaults
npm install jest-cli --save-dev
```

Next, open your `package.json` file and add the following key.

```json
"scripts": {
  "test": "jest"
},
```

## Write the test before the solution

One of the core ideas behind writing testable code is to plan the code you want to write, and then write a test that defines what the behavior of the code should be, and **then** write the code that passes the test.

Let's think about a very basic Calculator application you want to write with JavaScript. It will have the ability to add, subtract, multiply, and divide two numbers.

Using the Jest syntax, let's write the tests first.

```bash
touch __tests__/math-test.js
```

Paste in the following code to that file.

```
// Load the file that exports the functionality to test
jest.dontMock('../app/math');  // Don't create mock functions
var math = require('../app/math');

// Test to verify the math.sum() function
describe('sum', function() {
  it('adds 5 + 2 to equal 7', function() {
    expect(math.sum(2, 5)).toBe(7);
  });
});

// Test to verify the math.difference() function
describe('difference', function() {
  it('subtracts 5 - 2 to equal 3', function() {
    expect(math.difference(5, 2)).toBe(3);
  });
});

// Test to verify the math.product() function
describe('product', function() {
  it('mutiplies 2 * 5 to equal 10', function() {
    expect(math.product(2, 5)).toBe(10);
  });
});

// Test to verify the math.quotient() function
describe('quotient', function() {
  it('divides 10 / 2 to equal 5', function() {
    expect(math.quotient(10, 2)).toBe(5);
  });
});
```

Now run `npm test` in the CLI. Jest will run and tell you the obvious - all your tests failed.

```
Using Jest CLI v0.5.10
 FAIL  __tests__/math-test.js (0.022s)
● sum › it adds 5 + 2 to equal 7
  - TypeError: math.sum is not a function
        at Spec.<anonymous> (__tests__/math-test.js:7:17)
● difference › it subtracts 5 - 2 to equal 3
  - TypeError: math.difference is not a function
        at Spec.<anonymous> (__tests__/math-test.js:13:17)
● product › it mutiplies 2 * 5 to equal 10
  - TypeError: math.product is not a function
        at Spec.<anonymous> (__tests__/math-test.js:19:17)
● quotient › it divides 5 / 2 to equal 2.5
  - TypeError: math.quotient is not a function
        at Spec.<anonymous> (__tests__/math-test.js:25:17)
1 test failed, 0 tests passed (1 total)
Run time: 0.43s
npm ERR! Test failed.  See above for more details.
```

So now you can start writing functions to make the tests pass. Run the following commands.

```bash
mkdir app
touch app/math.js
```

Open the `math.js` file and paste the following code into it.

```js
function sum(one, two) {
  return one + two;
}

module.exports = { sum };
```

Run `npm test` again to see the output. The test suite **still** fails because there are failing tests. Now it's your job to add in the other functions you need to make the test suite pass.



