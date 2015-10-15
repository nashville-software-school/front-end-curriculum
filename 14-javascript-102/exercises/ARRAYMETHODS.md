1. Be in your Vagrant machine and `cd /vagrant/exercises`
1. `git checkout master`
1. Create a new branch `git checkout -b advanced-array-methods`
1. Create a new directory and immediately change to it with the following command combination `mkdir advanced-array-methods && cd $_`
1. Create an `index.html` file and a `arrays.js` file
1. Copy the code below into the JavaScript file
1. Once you are done, `git push origin advanced-array-methods`

```js
var planets = ["mercury", "venus", "earth", "mars", "jupiter", "saturn", "uranus", "neptune"];

// Use the forEach method to add the name of each planet to a div element in your HTML

var el = document.getElementById("planets");

// Use the map method to create a new array where the first letter of each planet is capitalized

// Use the filter method to create a new array that contains planets with the letter 'e'

// Use the reduce method to create a sentence from the words in the following array

var words = ["The", "early", "bird", "might", "get", "the", "worm", "but", "the", "second", "mouse", "gets", "the", "cheese"];
```