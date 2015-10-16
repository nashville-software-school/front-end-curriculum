# Temperature converter

Make sure you have committed all your current changes on your current branch and have pushed to Github.

```bash
cd /vagrant/exercises
git checkout master
git checkout -b temperature
mkdir temperature && cd $_
```

```js
/*
  ...........YOUR MISSION...........

  Write a program that will convert a temperature from
  fahrenheit to celsius, or from celsius to fahrenheit.

  In your HTML, have one input field where someone can enter
  in a temperature. Then have a radio button group where
  Celsius or Fahrenheit can be selected as the scale that the
  number should be converted to. Then a button that,
  when clicked, displays the converted temperature.
*/

function toCelsius () {

}

function toFahrenheit () {

}

// This function should determine which conversion should
// happen based on which radio button is selected.
function determineConverter (evt) {
  console.log(evt)
}

// Get a reference to the button element in the DOM
var button = document.getElementById("converter");

// Assign a function to be executed when the button is clicked
button.onclick = determineConverter;
```