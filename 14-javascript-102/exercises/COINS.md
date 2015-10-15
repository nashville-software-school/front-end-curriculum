1. Branch master again to a `coins` branch
1. Create a `coins` directory

```js
/*
  ...........YOUR MISSION...........

  Write a program that will convert a dollar amount to the
  number of coins that make up the amount. Use the common
  American coins of quarters, dimes, nickels, and pennies.

  Input: 0.67
  Output:
  {
    quarters: 2,
    dimes: 1,
    nickels: 1,
    pennies: 2
  }

*/

function coinCounter () {
  // Initialize a JavaScript object to hold the coins
  var coinPurse = {};
  
  coinPurse.quarters = 0;

  return coinPurse;
}

var coins = coinCounter()
console.log();
```